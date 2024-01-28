load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_navx_2023_0_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_headers",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-headers.zip",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_sources",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-sources.zip",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathena",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxathena.zip",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxathenastatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxathenastatic.zip",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm32.zip",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm32static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm32static.zip",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm64.zip",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_linuxarm64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-linuxarm64static.zip",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversal",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-osxuniversal.zip",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_osxuniversalstatic",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-osxuniversalstatic.zip",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-windowsx86-64.zip",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_kauailabs_navx_frc_navx-frc-cpp_windowsx86-64static",
        url = "https://dev.studica.com/maven/release/2024/com/kauailabs/navx/frc/navx-frc-cpp/2024.1.0/navx-frc-cpp-2024.1.0-windowsx86-64static.zip",
        build_file_content = cc_library_static,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_kauailabs_navx_frc_navx-frc-java",
        artifact = "com.kauailabs.navx.frc:navx-frc-java:2024.1.0",
        server_urls = ["https://dev.studica.com/maven/release/2024"],
    )
