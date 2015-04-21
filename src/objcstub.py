""" Reads in an Obj-C header file and recursively generates stub
implementation files.

Notes:
    - This script does not duplicate source files.
    - This script does not over-write implementation files if the interface of the
      implementation doesn't change. If you wish to over-write the interface
      entirely you must pass the --overwrite-implementation flag.
    - The script will look for all other header files within the same directory as
      the source header file that was given.
    - Currently this put all files in ./obj-c_output/

@since 2015.04.21
@copyright

"""

import os
import re
import shutil
import sys

class Interface(object):
    def __init__(self, name):
        self.name = name
        self.methods = []

    """ Remove all whitespace and macros from method. """
    def cleanMethod(self, method):
        # Remove the semi-colon and everything after it (comments, etc.)
        # Strip all whitespace again.
        # @note macros have already been removed.
        return method

    def addMethod(self, method):
        self.methods.append(self.cleanMethod(method))

    def createImplementation(self, dst):
        pass

    def __str__(self):
        return "%s: %s method(s)" % (self.name, len(self.methods))

def cleanLine(line):
    # Remove macros
    while True:
        m = re.search(r"\w+\((.+?(?=\)))\)", line)
        if not m: break
        line = line.replace(m.group(0), "")
    # Strip all excess white space.
    return " ".join(line.split())

def parseHeader(header, exportDir, overwrite):
    # when parsing interfaces, always strip the method names of extra whitespace. This will make it
    # much easier to compare methods that already exist.
    print "HEADER", header
    interface = False
    methodName = False
    implementationFile = os.path.join(exportDir, os.path.basename(header) + ".m")
    interfaces = []
    with open(header, "r") as f:
        num = 0
        for line in f:
            num = num + 1
            line = cleanLine(line)
            if methodName:
                # Continue appending to the method name until the entire defintion
                # has been added.
                methodName = methodName + " " + line
                if ";" in line:
                    interface.addMethod(methodName)
                    methodName = False
            elif "@interface" in line:
                print "LINE", line
                # Category.
                if "(" in line:
                    iface = line.strip("@interface ")
                else:
                    iface = line.split(":")[0].split(" ")[1]
                # @interface ClassName : NSObject { -- this extracts 'ClassName'
                print iface
                interface = Interface(iface)
                """
                if "@end" in line: # Might happen...
                    interfaces.append(interface)
                    interface = False
                """
                continue
            elif interface and (line.startswith("-") or line.startswith("+")):
                if ";" in line:
                    print "no methodName", interface.name, line
                    interface.addMethod(line)
                else: # Continue to concatenate method until complete.
                    print "methodName:", line
                    methodName = line
            elif interface and "@end" in line:
                # Create the implementation file
                print str(interface)
                interfaces.append(interface)
                interface = False
    # Create implementation file.
    #print str(interfaces)

def main(headerPath, exportDir, overwrite):
    headerDir = os.path.dirname(headerPath)
    # Any import that is part of a framework is automatically searched within the respective folder.
    # For example, if we find <UIKit/UIFont.h>, 'UIFont.h' will attempt to be found within the base
    # directory.
    with open(headerPath, "r") as f:
        num = 0
        for line in f:
            num = num + 1
            line = line.strip()
            if line.startswith("#import"):
                m = re.search(r"\<(.*)\>", line)
                if not m:
                    print(header, "Line #", num, "- Failed to match #import declaration", line)
                    continue
                name = m.group(0)
                # Extract the header file name only.
                name = name.strip("<").strip(">").split("/")[-1]
                srcPath = os.path.join(headerDir, name)
                if not os.path.exists(srcPath):
                    #print("Header file ignored:", path)
                    continue
                # Copy header file.
                dstPath = os.path.join(exportDir, name)
                shutil.copyfile(srcPath, dstPath)
                parseHeader(srcPath, exportDir, overwrite)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Recursively creates stub Obj-C implementation files an Obj-C header file")
    parser.add_argument("header"
        , metavar="H"
        , type=str
        , help="The path to the header file to parse"
    )
    parser.add_argument("--overwrite-implementation"
        , dest="overwrite_implementation"
        , action="store_true"
        , help="Overwrite implementation, regardless if there is an existing implementation"
    )
    args = parser.parse_args()
    if not os.path.exists(args.header):
        print "Header file does not exist at:", args.header
        sys.exit(1)
    exportDir = os.path.join(os.path.dirname(os.path.realpath(__file__)), "export")
    if os.path.isfile(exportDir):
        print "Export path must be a directory. Given a file at:", exportDir
        sys.exit(1)
    if not os.path.isdir(exportDir):
        os.makedirs(exportDir)
    main(args.header, exportDir, args.overwrite_implementation)
    sys.exit(0)
