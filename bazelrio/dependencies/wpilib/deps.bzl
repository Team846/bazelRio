
load("//dependencies/wpilib/2023_4_2:deps.bzl", "setup_wpilib_2023_4_2_dependencies")
load("//dependencies/wpilib/2024_1_0:deps.bzl", "setup_wpilib_2024_1_0_dependencies")

def setup_wpilib_dependencies(version):
    if version == None:
        print("Not setting up dependencies for wpilib")
    elif version == "2023.4.2":
        setup_wpilib_2023_4_2_dependencies()
    elif version == "2024.1.0":
        setup_wpilib_2024_1_0_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
