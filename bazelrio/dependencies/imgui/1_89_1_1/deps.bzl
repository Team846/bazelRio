load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_imgui_1_89_1_1_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.9-1/imgui-1.89.9-1-linuxarm32static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.9-1/imgui-1.89.9-1-linuxarm64static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.9-1/imgui-1.89.9-1-linuxx86-64static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.9-1/imgui-1.89.9-1-osxuniversalstatic.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.9-1/imgui-1.89.9-1-windowsx86-64static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_imgui_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2023/imgui/1.89.9-1/imgui-1.89.9-1-headers.zip",
                build_file_content = cc_library_headers,
    )
