
load("//dependencies/phoenixpro/23_0_2:deps.bzl", "setup_phoenixpro_23_0_2_dependencies")

def setup_phoenixpro_dependencies(version):
    if version == None:
        print("Not setting up dependencies for phoenixpro")
    elif version == "23.0.2":
        setup_phoenixpro_23_0_2_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
