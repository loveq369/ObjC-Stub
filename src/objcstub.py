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
        # Remove macros.
        method = cleanLine(method)
        # Remove the semi-colon and everything after it (comments, etc.)
        method = method.split(";")[0]
        # Strip all whitespace again.
        method = " ".join(method.split())
        return method

    def addMethod(self, method):
        self.methods.append(self.cleanMethod(method))

    def getImplementation(self):
        s = "\n@implementation " + self.name + "\n\n"
        for method in self.methods:
            isStatic = "+" in method
            # Get the first brackets.
            m = re.search(r"\((.+?(?=\)))\)", method)
            val = m.groups(0)[0]
            if "*" in val:
                ret = "    return nil;\n"
            elif "instancetype" in val:
                ret = isStatic and "    return [[self alloc] init];\n" or "    return [super init];\n"
            elif "void" in val:
                ret = "    \n"
            else:
                ret = "    return 0;\n"
            s += method + "\n"
            s += "{\n"
            s += ret
            s += "}\n\n"
        s += "@end\n"
        return s

    def __str__(self):
        return "{}: {} method(s)".format(self.name, len(self.methods))

def cleanLine(line):
    # Remove macros
    while True:
        # Only search for cases where all chars are uppercase. Some
        # interfaces are directly next to their corresponding category
        # brackets.
        m = re.search(r"[A-Z0-9_]+\((.+?(?=\)))\)", line)
        if not m: break
        line = line.replace(m.group(0), "")
    # Strip all excess white space.
    return " ".join(line.split())

def parseHeader(header, exportDir, overwrite):
    # when parsing interfaces, always strip the method names of extra whitespace. This will make it
    # much easier to compare methods that already exist.
    #print "HEADER", header
    interface = False
    methodName = False
    implementationFile = os.path.join(exportDir, os.path.basename(header.rstrip(".h")) + ".m")
    interfaces = []
    lines = []
    with open(header, "r") as f:
        num = 0
        for line in f:
            num = num + 1
            if methodName:
                # Continue appending to the method name until the entire defintion
                # has been added.
                methodName = methodName + " " + line
                if ";" in line:
                    interface.addMethod(methodName)
                    methodName = False
            elif "#import" in line:
                # @hack Replace UIKit with FakeUIKit until this becomes a CLI option.
                line = line.replace("<UIKit/", "<FakeUIKit/")
            elif "@interface" in line:
                #print "LINE", line
                iface = cleanLine(line)
                # Category.
                if "(" in iface:
                    iface = iface.strip("@interface ")
                else: # Normal interface
                    iface = iface.split(":")[0].split(" ")[1]
                # @interface ClassName : NSObject { -- this extracts 'ClassName'
                interface = Interface(iface)
            elif interface and (line.startswith("-") or line.startswith("+")):
                if ";" in line:
                    #print "no methodName", interface.name, line
                    interface.addMethod(line)
                else: # Continue to concatenate method until complete.
                    #print "methodName:", line
                    methodName = line
            elif interface and "@end" in line:
                interfaces.append(interface)
                interface = False
            lines.append(line)
    # Write the new header file.
    with open(header, "w") as f:
        f.writelines(lines)
    # Create implementation file.
    with open(implementationFile, "w") as f:
        f.write("\n#import \"{}\"\n".format(os.path.basename(header)))
        for interface in interfaces:
            f.write(interface.getImplementation())
    # @todo Delete implementation file if there is no code.

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
                parseHeader(dstPath, exportDir, overwrite)

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
