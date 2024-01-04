load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_revlib_2024_1_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-headers.zip",
        sha256 = "2ba3c8fb7f7a656887042d79b13db9d162f55e48428c6f4c0fa9542b774cfb41",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_headers",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-headers.zip",
        sha256 = "ff3e615c349c4cfbf912355efcd30e99273d3eec503ce71a4b2451c71f098b29",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-windowsx86-64.zip",
        sha256 = "4c77d659a942615961a1c070a921160b13226a5d9d2e9fc1db902f17508082b5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-windowsx86-64static.zip",
        sha256 = "411a42d26b87be4d8e5075d047667ccf985b1f16e2c31458b204214bae2f0214",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm64.zip",
        sha256 = "57bd30dfdd02cffd896c347e8fb7b21f0c6d8227a4127f90faf191b86470c719",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm64static.zip",
        sha256 = "291e0695e65dcac257f76e73e7aa7f42ce188019742785cf1d62c789d640cc71",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxx86-64.zip",
        sha256 = "48e50b407a35648b3d9976f1bc2d2849891ced33cd027d90aa5443079e6a4f5c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxx86-64static.zip",
        sha256 = "a7d6768b16214648c8fc7e74fca8fea26e3eb90bca7d12ad5520b4705c64ac3e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxathena.zip",
        sha256 = "092c9098c8cbf7e6d759481c9e1e172a30b28706ccd3a87dd1a549c84a4fd38a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxathenastatic.zip",
        sha256 = "27900fc837610adc750ca16ea0970caa7ce54736168d0a47d4985b6c1ad7d080",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm32.zip",
        sha256 = "d21aba4381c4857f3a43da65fcb0c5f53b8d5e9047b78b15b24cba4d982c2d33",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-linuxarm32static.zip",
        sha256 = "0a1c5922a209908e27b3e462b64bc7bbc7e711026872c5aa638c167a1efb7d64",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-osxuniversal.zip",
        sha256 = "533217e07059de3a3a93ae7f4255f13690f449d3a43be9f5abc24af6a1d75527",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-cpp_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-cpp/2024.1.1/REVLib-cpp-2024.1.1-osxuniversalstatic.zip",
        sha256 = "757a8675bce7a7581b8bc915c59fea25d8adc9340c217a2cffa040597086bedd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-windowsx86-64.zip",
        sha256 = "bf79104eb80ace6281a6201a085dd58c4e8fc6debb572d789e9dd5d6ba0306b1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_windowsx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-windowsx86-64static.zip",
        sha256 = "99ba8162b4319da3657ca77e577a63665f7629db66af14f3090cca9dad3e80e5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm64.zip",
        sha256 = "b6f80e4a393ea0396f4f49af5d32caca9b418b9748404e2a340316b62bb211d6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm64static.zip",
        sha256 = "8fe19f3428b340263a1e3b0d591ec23075c9ea7d36065dda7a7b49a3f46321cd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxx86-64.zip",
        sha256 = "62df6d2eb9ad850a9565e1c7526e85bf296027c4d5b3108cd1c4a0d906d7de3e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxx86-64static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxx86-64static.zip",
        sha256 = "33806f3fbfc69db1bad8c5f3ead7e016a84305ab94b5c2f0e1ee3314505309c8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathena",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxathena.zip",
        sha256 = "7d81961fbf9e3e1fe9b23629ecd31c899152a5a14f6eeb5a41bc7f293451b74b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxathenastatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxathenastatic.zip",
        sha256 = "3284ba6f17c682cdae92e56567c0c2e81b8ce731f0451ca281843c9db956b05d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm32.zip",
        sha256 = "644f8e1ad8cf3c25aa39dcada6f0974d36f414539e528ad050f8d7b54fa1bd4f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_linuxarm32static",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-linuxarm32static.zip",
        sha256 = "be02151ec43b6d7878193b19008615473e27c2f078da27649618d9fafb2ed954",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversal",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-osxuniversal.zip",
        sha256 = "babca47438b9df83f1db4d35a34748dbaa324908fa56e39730c193d154482b75",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_revrobotics_frc_revlib-driver_osxuniversalstatic",
        url = "https://maven.revrobotics.com/com/revrobotics/frc/REVLib-driver/2024.1.1/REVLib-driver-2024.1.1-osxuniversalstatic.zip",
        sha256 = "ae8160027e7e0e9c65c110c08e3ef9d118958c717422d28d6f037ceb39db680d",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_revrobotics_frc_revlib-java",
        artifact = "com.revrobotics.frc:REVLib-java:2024.1.1",
        artifact_sha256 = "61789f31813640ca51b96043666f145a80ea00117f8031590dfd89537b0b2ad8",
        server_urls = ["https://maven.revrobotics.com"],
    )