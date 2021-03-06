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

@todo Recursively search for headers that are not already in the repository AFTER the
main header file has been parsed.
@todo Better typedef parsing using the Typedef class.
@todo return type of 'id' may be 'return nil' in all cases.
@todo Everything after a category MUST be removed. Consider: UIViewController (UIStateRestoration) <ProtocolName>
      '<ProtocolName>' must be removed!
@todo Interfaces can sometimes be on one line.

@since 2015.04.21
@copyright

"""

import os
import re
import shutil
import sys

class HeaderFile(object):
    def __init__(self, path, interfaces):
        self.path = path 
        self.interfaces = interfaces

    def getHeaderImportPath(self):
        return os.path.basename(self.path)

    def getImplementationPath(self):
        basedir = os.path.dirname(self.path)
        basename = os.path.basename(self.path)
        return os.path.join(basedir, basename.rstrip(".h") + ".m")

class Interface(object):
    def __init__(self, name):
        self.name = name
        self.methods = []

    """ Remove all whitespace and macros from method. """
    def cleanMethod(self, method):
        # Remove macros.
        method = getCleanLine(method)
        # Remove the semi-colon and everything after it (comments, etc.)
        method = method.split(";")[0]
        # Strip all whitespace again.
        method = " ".join(method.split())
        method = method.replace(" NS_DESIGNATED_INITIALIZER", "")
        return method

    def addMethod(self, method):
        self.methods.append(self.cleanMethod(method))

    def __str__(self):
        return "{}: {} method(s)".format(self.name, len(self.methods))

class Typedef(object):
    def __init__(self, _type, name):
        self.type = _type
        self.name = name

def getCleanLine(line):
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

def getEnumTypedef(line):
    m = re.search(r"[A-Z0-9_]+\((.+?(?=\)))\)", line)
    print "typedef:", line
    line = m.groups(0)[0].split(",")[1]
    #_type, name = m.groups(0)[0].split(",")
    #return Typedef(_type.replace(" ", ""), name.replace(" ", ""))
    return " ".join(line.split())

""" Parses a simple typedef such as: 'typedef NSInteger NSTimeInterval;' """
def getTypedef(line):
    _, _type, name = line.split(" ")
    return Typedef(_type.replace(" ", ""), name.replace(" ", "").rstrip(";"))

class FrameworkReader(object):
    def __init__(self, path, exportdir, overwrite):
        self.path = path
        self.exportdir = exportdir
        self.overwrite = overwrite
        self.headers = []
        self.typedefs = []

    def addHeader(self, header):
        # when parsing interfaces, always strip the method names of extra whitespace. This will make it
        # much easier to compare methods that already exist.
        #print "HEADER", header
        interface = False
        methodName = False
        interfaces = []
        lines = []
        print "addHeader", header
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
                elif "NS_ENUM(" in line or "NS_OPTIONS(" in line:
                    typedef = getEnumTypedef(line)
                    self.typedefs.append(typedef)
                    """
                    elif "typedef" in line:
                        typedef = getTypedef(line)
                        self.typedefs.append(typedef)
                    """
                elif "@interface" in line:
                    #print "LINE", line
                    iface = getCleanLine(line)
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
        self.headers.append(HeaderFile(header, interfaces))

    def getImplementation(self, interface):
        s = "\n@implementation " + interface.name + "\n\n"
        for method in interface.methods:
            isStatic = "+" in method
            # Get the first brackets.
            m = re.search(r"\((.+?(?=\)))\)", method)
            val = m.groups(0)[0]
            if "*" in val or val.lower() in ("cgpathref", "class"):
                ret = "    return nil;\n"
            elif val.lower() in ("instancetype", "id"):
                ret = isStatic and "    return [[self alloc] init];\n" or "    return [super init];\n"
            elif "void" in val:
                ret = "    \n"
            elif val.lower() in ("int", "bool", "nsinteger", "nsuinteger", "double", "float", "cgfloat", "cgglyph") or val in self.typedefs: # primitive numeric values.
                ret = "    return 0;\n"
            else: # Cast type
                ret = "    return (" + val + "){};\n"
            s += method + "\n"
            s += "{\n"
            s += ret
            s += "}\n\n"
        s += "@end\n"
        return s

    def writeImplementations(self, exportdir):
        for header in self.headers:
            imppath = os.path.join(exportdir, header.getImplementationPath())
            with open(imppath, "w") as f:
                f.write("\n#import \"{}\"\n".format(header.getHeaderImportPath()))
                for interface in header.interfaces:
                    f.write(self.getImplementation(interface))
            # @todo Delete implementation file if there is no code.

def copyHeaderFile(headerPath, name, exportDir):
    headerDir = os.path.dirname(headerPath)
    dstPath = os.path.join(exportDir, name)
    srcPath = os.path.join(headerDir, name)
    if not os.path.exists(srcPath): # Source file does not exist.
        return False
    shutil.copyfile(srcPath, dstPath)
    return dstPath

def readHeaderFile(reader, headerPath, exportDir):
    name = os.path.basename(headerPath)
    dstPath = copyHeaderFile(headerPath, name, exportDir)
    if not dstPath:
        print "Failed to copy header file:", dstPath
        return False
    reader.addHeader(dstPath)


def readAllHeaderFiles(reader, headerPath, exportDir):
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
                dstPath = copyHeaderFile(headerPath, name, exportDir)
                if not dstPath:
                    continue
                reader.addHeader(dstPath)
    # @todo Copy the this header file to the directory.

def main(headerPath, exportDir, overwrite, headerFile):
    # Any import that is part of a framework is automatically searched within the respective folder.
    # For example, if we find <UIKit/UIFont.h>, 'UIFont.h' will attempt to be found within the base
    # directory.
    reader = FrameworkReader(headerPath, exportDir, overwrite)
    if headerFile:
        readHeaderFile(reader, headerPath, exportDir)
    else:
        readAllHeaderFiles(reader, headerPath, exportDir)
    #reader.replaceInHeader("<UIKit/", "<FakeUIKit/")
    # Create implementation file.
    reader.writeImplementations(exportDir)

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
    parser.add_argument("--header-file"
        , dest="header_file"
        , action="store_true"
        , help="Indicates that a header and implementation file should be created from the file provided"
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
    main(args.header, exportDir, args.overwrite_implementation, args.header_file)
    sys.exit(0)
