
load("//dependencies/wpilib/2023_4_2:deps.bzl", "setup_wpilib_2023_4_2_dependencies")

def setup_wpilib_dependencies(version):
    if version == None:
        print("Not setting up dependencies for wpilib")
    elif version == "2023.4.2":
        setup_wpilib_2023_4_2_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
