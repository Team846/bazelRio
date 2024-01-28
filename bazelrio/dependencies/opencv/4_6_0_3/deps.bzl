load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_opencv_4_6_0_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxathena.zip",
                build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxathenastatic.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxarm32.zip",
                build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxarm64.zip",
                build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxx86-64.zip",
                build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-osxuniversal.zip",
                build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-windowsx86-64.zip",
                build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxarm32static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxarm64static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-linuxx86-64static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-osxuniversalstatic.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-windowsx86-64static.zip",
                build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/thirdparty/frc2024/opencv/opencv-cpp/4.8.0-2/opencv-cpp-4.8.0-2-headers.zip",
                build_file_content = cc_library_headers,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_thirdparty_frc_opencv_opencv-java",
        artifact = "edu.wpi.first.thirdparty.frc2024.opencv:opencv-java:4.8.0-2",
                server_urls = ["https://frcmaven.wpi.edu/release"],
    )
