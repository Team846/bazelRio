
load("//dependencies/phoenix/5_30_3:deps.bzl", "setup_phoenix_5_30_3_dependencies")

def setup_phoenix_dependencies(version):
    if version == None:
        print("Not setting up dependencies for phoenix")
    elif version == "5.30.3":
        setup_phoenix_5_30_3_dependencies()
    else:
        fail("Unsupported version '{}'".format(version))
