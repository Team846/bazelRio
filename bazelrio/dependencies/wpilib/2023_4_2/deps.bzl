load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_wpilib_2023_4_2_dependencies():
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxathena.zip",
        sha256 = "a5dc60b5e7e84258d7e8d8cec158c0cee008bbf2c0b5b6bd7bebb21e5640e7dd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "cce26e814cb6679575d39d5b1d16990e7b2dd2e18f906ecfe84946036f6b5f92",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "de9ea673fabfde5c2e605dea7f9bac44d7d2fb72cf7a4cad4616ebc6a234459d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "789f5acabd79e58a9be68e911719e48212dbb8ce3d14fb72cef1469264a1c593",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "293616b43d2bda985a522888f927b568f3bf72981627bb9ef3fdb9fe0a3c8ee5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "bd87d4c3cd4d78d8551f054cb88777a8231362affa130b9f4dd7da11ead1e7de",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "cc643e80d974814d27f0fa603b2936b7c227995b2d2ac7f1842aa1288a72e094",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "b0f86a72b2853e8bcbd400343fa467e890d8096f6ff5e6ec53de170051f0f1ae",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "dd944475c345751b6c88bf5c08086f28a93c7ed496c47a9563475f5b8b71b7e0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "d7dcf1a6e1dd1c0bd3dac2cddd64a4df4a0a778da8fb17e17ce689501f3b13f2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "63b3e70b3dc0330423c50bcd66c1af3af3c4c30d34c69206ef7ff2fd82b0bb5f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "ad5925fb892b8cf09b834875a79ef09ba4aa8db947cfdf787517cf8f1b9ea5ca",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-headers.zip",
        sha256 = "7611d5e555fb37480e3ad9283632067003b94ea6a25db68ab6222d074b0359bb",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibc_wpilibc-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibc/wpilibc-cpp/2023.4.2/wpilibc-cpp-2023.4.2-sources.zip",
        sha256 = "716cdd8e470cfd549b00b6d37db91fbd2ee208e652185ad5fd8b1eeccc3465b5",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxathena.zip",
        sha256 = "e9364d78cedcf1ab13964d5cda5462ff9aa6d1bef3e2e9e30f31623bd7164a46",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "510904aba61175c130a8f8566a60cfef8341a29aff67b283015c8918af7ed869",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "ec699dbc2cd387353ac127f2ba8595425bf8cec48f9043141a1725e0d42c9326",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "b6bebb6352dcbaee70d979c46fd47a7cdf8936e1d06a0ccb69670d51eef8795a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "fb12294c87a5806d39307d042e7cb8cbd4b5e0fa49b872fa5c49fa41ed2feca0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "40d20afea278c414d5835c9e6b14f450acf180ace22704ddc8b1ca6bf107ad0e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "87ef4071d12f129301604e356897e56915b4ed8e732e00d2ba03e191ab23fdb8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "2f51d0e203b896213e469586b3da78df5a77a3920f856e336a6a52a43e665099",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "06fce0daaa926825c530619f4ea0034367fc6cf09b4d80c492b5a034bf5ecac1",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "8ec2e257a369b74a07d8f381b48ed387c96abaf90a5277ecd8cc6f1706101972",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "8933317422bd84fdcaab51a2105e08cd8a493a3bec909312971f7b5eda06b5a5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "263714229b54d6cfd319439d331a8154edc7687ae7b5658b6fafdd3807768581",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-headers.zip",
        sha256 = "b1cb12c48c3594e6ee15d6d35acf19fcc74fdef589f1e5f26e2b76f152aeac6c",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_hal_hal-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/hal/hal-cpp/2023.4.2/hal-cpp-2023.4.2-sources.zip",
        sha256 = "0128888afd962a9658464a2e3fd2421582127d0cca5841b6edff036b08056cd7",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxathena.zip",
        sha256 = "faacba5b90e7b140f2834093bd888204f8bdbf83139ae736ac194c24d30a9824",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "93eb678a091d6e079c93735fababa11bd35ca8358a2f5731eccb2c1a2d9671b3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "f39fcded3f03038fc78050d8e877901bc5de5695a9c2ac0e4a2f6b778cb8e99e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "84a5818b2fbf6f72eba3b72e59267d70ed5a83c9e95b9a01172b825f72788e1f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "69a0c7a7d3ff938b411d62fdebf8de01ac6273abae2201ca6729a4c5fa441d03",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "94631bac9728a5dcdf8f5effaa4f12799f97b697e166290ba65a9519569cd24d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "237d9238561ef76e903d6410ad22bbb8f800611557b71889f3d8c473f1ed83e9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "6be16a979d48ee7dbad81f0e1cfbfd506c1aaf6ee69eb2e5f04922d23e702667",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "d67703485c508ad56560fdd851af9be7024852a451e8482166d3c03a38e872f0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "ed7ce0a1f67b713b43b0643a771945a0fc3eff179354b23908732f7830094ff2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "35aed2c71e4d3ae14f27d4792e96cc28d05216def02a6e1eef0e0e348fc14769",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "06626de10051acabc2488e57975512a31f0ad91ef0ea833234b043114ab682f9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-headers.zip",
        sha256 = "e90c4c5c6ec807a9087f1c1af4b457f482653acbb55da9792eaa5c765b046f19",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpiutil_wpiutil-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpiutil/wpiutil-cpp/2023.4.2/wpiutil-cpp-2023.4.2-sources.zip",
        sha256 = "abf84795447ecef8b668609a05e59f14d88ec90d6e86c8a59338a33d1ec8ad0d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxathena.zip",
        sha256 = "97beeb5bad688451a65d09efed22ee1be13cf41329a6a70b66e651b4be5cd1d4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "2e3afd04d81bf1771a6414db02f2fc0adea80f9a9fef530f1ede6f662ad1620b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "4dda067fde3bd187cc0ba0c9f526ae38bdb5403f9d3c78224b7a7fce1c674329",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "17dfdf11c9f667dbc7f79c07768c6f9a3bcd7ee00511ca9f998c4d270dbd1b79",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "e58fb495d41b520a7524408641e3466c850e9d583e5d679379c931018f844c64",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "f2857e7e6e49bc4806edf9b08d877546b7a34e9270cc772e69484d12520650a9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "d040950f2ed7c00817cedcf2e2a9a9edcaff90320345e32a9865b6f52a3b735e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "db64f1416d0c900a8d56bd2a89b62aa4b547ca7587fde663ca88762ca9c10e4d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "0c2c89c00d076d74509ed9eaaa52acd96e19901b33c901105aa6181da6ca1e7b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "3e4ab94f6705b43e67cd1bb6d1be0ffeb69f0b401facbbd47dcd266346c6c9c6",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "7e1ae32901f537f3fc894f93757d5800befd66e0a616537e568a50e4aa84afdd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "e93feb58be9aa0cd41a8c41e326c315540eb6c80a40f7647fbe22c9d412626d9",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-headers.zip",
        sha256 = "e150a664cc96f88fdd643b2b45ef438cc090669f147287d1f69fb19a6cf0669e",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpinet_wpinet-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpinet/wpinet-cpp/2023.4.2/wpinet-cpp-2023.4.2-sources.zip",
        sha256 = "4cca36cd56215503d8286124a87cd282c0b5c4cd145ebec7a730bd7cf3c81e49",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxathena.zip",
        sha256 = "26a7b3b1b91451c2bb2ae2eb274b5725bfd35a7721994c0a3af2e436f5478ace",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "34d9daf33fb41ad4132c805f0660260cc8121d3aea6110d85ccad68c74881b9a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "03e49d4848647351ddcf29353ebed162f4c7b33b4fbde80622e66ff0e8fb334f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "ef8b23fe476794f3590091dbca8fe9ee75caf83b7eacc7430033130fd2334148",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "8ff3529954a3fc8dc7e499812943bedcd7c95e1e7248e38bf9182c629d143d89",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "407f8f00ada8ec515fbb4dad820515db80bcee657ec6894b2c63e910abca97c4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "e54c99e04465d38ccf564d176878a09d704389ebc9150a59cac55af3007cbf6f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "5d5e8f9014169dfa8254ed65de5eaa764a530372cc765aafb3732083c999cc7a",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "8ef9ce6366a8f5a0e121b12084e6f3b5016540074ed43c88ffb47c7877c48ceb",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "ebe87116123e5fa08094eb286d72d877007e4ec6231fbee45a2fbaf511cb51cd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "11fbd085ab630ff5190770ee3a49be08d9818cf519710d5516882dd636e7669b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "4cfe06a7700dfc817039192bd8f414a5bf85e891b676e6e62caf7ff850e6d00e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-headers.zip",
        sha256 = "848aee6bfef512050357e20f8dad72bb7989e306d4232e21fedcf0945e562a6d",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_ntcore_ntcore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/ntcore/ntcore-cpp/2023.4.2/ntcore-cpp-2023.4.2-sources.zip",
        sha256 = "66fb348b90ba887dc0e21a240ac5443ae6398d45ff73367215acd26ded3087da",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxathena.zip",
        sha256 = "5c680a71dd7c456f75717b00f2b04807cdaf693dcca0e03b07e046245b0ad2b4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "9cc653716aa8b9d1bb8f4122fad3cbf2ef17b3aed1048f81b7f2d3a3571aa3d5",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "bbcccbfb32c4b57b71c11314dde96f41b131b22ac2aff57fa8bfbde3d10926d5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "4667c8648ed495f52455c7a2670533699789852a3294b6bf5b4c57fcc7a4f45d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "39020c298b7bb76cc1b45455a81e489db6b416033e7b232cf7538f1aa42544ee",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "396c5c6b28e3c1fd83695255111e5d5584921c992c4d6030afe3c342b32d3690",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "8e26c7d7ac105a31fcaa3d63a0a21cf274400d8b1f54cbf0baa6178de9bc6e45",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "b6b68368087d859027699f70d1885879a0999e51a2624d42d085247850d07c9e",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "6807d4d5ce5f779b261a8952b52374f4dde28dac0e0ec93456818c179554cbe3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "a9445c1e1c586f0f46fa771d0ba3baa4c700ac59840119b853e1ef6ada2a0da0",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "13c0966077faba677bb5c8f2e51c4a3f8e9ced84c520f4677053899a670d9855",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "b0e3a13c11dc1115a6ac7d193071cd87c107c1d4d1d44b842c5cdc91c482975f",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-headers.zip",
        sha256 = "026ac04153e401cdc87f1828b5219df73056faf1980e2193e2ff52231a84906e",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpimath_wpimath-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpimath/wpimath-cpp/2023.4.2/wpimath-cpp-2023.4.2-sources.zip",
        sha256 = "f22837dbc4df43ac1fa33b6c5c60146344e957946dcaf5b71f6b20990c49c415",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxathena.zip",
        sha256 = "5cb71246a06cde28051df7944ae072943ad5e40958ea883a58e5a77b5e35eed7",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "51df4090d93d1311c8e49a52480b853f9d7ac2a584ffbc99b764ecf71345227b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "ca9c387b64719218217baae9cee982d1ee723b7584550be336d4a61b646495fa",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "bf189cc59152acbd1a56c123e9b21c083d68e5a0745100937907cc4340721554",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "f9c6c01d8fa9cfcbffe0acc816b4622b5439dc445f8305de30ea185b42d56bb4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "74320a68ab32ee46ca7f0bde849acf47c71c3a61d7ba7b63d94d8910dafd95d2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "a8a83b9444be2f869f09b237b7d8a940f76f1377d3232998122c9de4349d5a38",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "676fb39266dc9081a3397fe8fa0f229c3e3c936139b0c8c743d20759623d2ca3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "53134fcd4ed0b22751669d3d9090532e1138ed87b5da6769112c7159d337119d",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "066d8f1e844815d44e2f9ae3b92a10ceaa03114e433dfc182caf8e1bf14d7940",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "e4282ea119b8bfe2c53e2c1d85559c4103d4b795bfe862c503cefa1263502def",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "17ba6b4c22c2a59c6ab1c406deba9cd73077fa59758084ded60fcefdc6208ed2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-headers.zip",
        sha256 = "370f3fb09a6558d09c41bbdf928c20746a77fca14b069f3d8152ee9c434350ec",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cameraserver_cameraserver-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cameraserver/cameraserver-cpp/2023.4.2/cameraserver-cpp-2023.4.2-sources.zip",
        sha256 = "5d6396a4dafb9dfbf6cc0b573e6194516d096ce620127a890c966ba72a16fe4d",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxathena.zip",
        sha256 = "9af74e85fa8a7c260744cb2f1121cfe1b712efde778915309908360f3044a1fb",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "6e4413a23049b35740fed146c15bef59a2e95cb591cb1efc662325943a723a1b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "767ce26bffef3851a1f11a55a48af82ef924ba9edfd65866a3895443b60579e0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "cfc2becc2b377348483a3c94371fc8ec4de49b573e0497f80bdff6c54ba64d5f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "e59792e573a2ea31828d4af891544399baca541f050be27d982e2f597c4d1a08",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "47ae656e91cf076a48f58fd639ca075ced01dc83625c97fb3872b43c8b7dfdc1",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "751217e494198afcd3aaf391385dac7903da14a0e7498cc6a78617942a49e4dd",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "cd21530ba4f50a2017a609ebdfc5b0295ba5e6bf743fea59c40f353ebea2c7c3",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "03ed9a5c5b7e07ae38d682c6a45d57d99f3be2deb82552b5a47ef8f40d9d3afa",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "15a63fef900ca1784c36f9a787ee80d4128a5c59430e77528430a2efb2e1ad67",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "d8f01d0ef9c39d32dbaceccfe877790e0617133cfd7aa1b97e84d85d8f11f610",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "4ca21f38c605c6df9b0db0c1f13dfdaa304c715f954dfd7adbde04cf0cebd6dd",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-headers.zip",
        sha256 = "34a35270cf4075960947062eccf5491c7d2967f88143fd95a8c12408dde00e80",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_cscore_cscore-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/cscore/cscore-cpp/2023.4.2/cscore-cpp-2023.4.2-sources.zip",
        sha256 = "d6c07a8d0a758835f9884bf9d19d5f87766f1f45875609d7e1aa518a9ddaad4e",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathena",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxathena.zip",
        sha256 = "a831b8364fd4892dc6ba541bc8e563b233402b083e2d1bab1b5aa42d769be5a6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxathenastatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxathenastatic.zip",
        sha256 = "b3321f56e205ce275189e402fea4304efc88317fdc9d3c94dd70ee601aa1d383",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxarm32.zip",
        sha256 = "c07e3562d0c10101196f25dcaffc75d91d2c921b5f7296bb6fc4161339469ea0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxarm64.zip",
        sha256 = "c5c0571c76d8e9e305c2df559dc6e26a54af59dd07b6c3e893eb619d643e8d0f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxx86-64.zip",
        sha256 = "79fb43bfc8075213d37ea4e29bf54fb05026cbdb8c183a077897442ba0aca658",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-osxuniversal.zip",
        sha256 = "558beb313457b53f6ec99542b9c69829e730b964329cba8e64cb0fbcd5f97bd8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-windowsx86-64.zip",
        sha256 = "a0f8377c6c12b5c85ea6b6ac4847eaf5359f8d1e1319e4529b2ce3e02aaec437",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm32static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxarm32static.zip",
        sha256 = "6fbc7fb1d6cb215e602a58f78da08e7c7808e60a372a0e5bbe9a7371a79b77f2",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxarm64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxarm64static.zip",
        sha256 = "066e780859c1401b60530663491710c1cb97b1c3f062b6071edba351552aa3b8",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_linuxx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-linuxx86-64static.zip",
        sha256 = "dd0f32fa95f62cb0002a4afb194ba0ffa682ae452b7d0627ca64f1d41b50214b",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_osxuniversalstatic",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-osxuniversalstatic.zip",
        sha256 = "92eab5ce172f5691f99fd135127e0f508dcaf6c1bea7ccd2e6ca723fb3389b70",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_windowsx86-64static",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-windowsx86-64static.zip",
        sha256 = "104566e6e59f486580779de4883a763f71cee3513258d9c9492f11a850331d41",
        build_file_content = cc_library_static,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_headers",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-headers.zip",
        sha256 = "3cd6a2a2c0580c3a999f3c324dd6cd81e703d1981f60b55632a1596ba23dcb62",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-cpp_sources",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/wpilibNewCommands/wpilibNewCommands-cpp/2023.4.2/wpilibNewCommands-cpp-2023.4.2-sources.zip",
        sha256 = "fd67f8be5fb8d8ff18d9ab32b79110332492845b75ba3e3690e93145dc5c075c",
        build_file_content = cc_library_sources,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.4.2/halsim_ds_socket-2023.4.2-linuxarm32.zip",
        sha256 = "1c6cf6d2596c8a1162ca53c6ed5f752a1fd3f1fdd260ed93395e526b80609511",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.4.2/halsim_ds_socket-2023.4.2-linuxarm64.zip",
        sha256 = "02440b0c0e2e7cdf9e9fd797f554c01b762055c02c903c90d9dffe4ac8c651ae",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.4.2/halsim_ds_socket-2023.4.2-linuxx86-64.zip",
        sha256 = "2d569534ce161b0673226b5fa29d67c9f0bd3782aafc4c2e3f88cb61bfba9bb3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.4.2/halsim_ds_socket-2023.4.2-osxuniversal.zip",
        sha256 = "d816e8b1eafbcba82f2ca6861d77e38ae6ae28448d057f0aeb73fa2eeb862904",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ds_socket_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ds_socket/2023.4.2/halsim_ds_socket-2023.4.2-windowsx86-64.zip",
        sha256 = "8387662ca06ce961a41a683a404ebeb01babf930a5586ccb68099d06fd752d4f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.4.2/halsim_gui-2023.4.2-linuxarm32.zip",
        sha256 = "f7959522f0a2a1e10018609ba9248320c8f2f6f18faed7bb570346d6c3d12e6c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.4.2/halsim_gui-2023.4.2-linuxarm64.zip",
        sha256 = "3428c9400d1387e494a567ba121402d252f0656d76ffc85816d9bf28f4e4b2ee",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.4.2/halsim_gui-2023.4.2-linuxx86-64.zip",
        sha256 = "33a8a2073629ebed9ce9aba607117ca2f785c403c076d496dac4749eaec7a9e9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.4.2/halsim_gui-2023.4.2-osxuniversal.zip",
        sha256 = "7503fa810ef3cb379cb2ebdf8ce358281b2b79f361ef8bc6374c1aabc146e141",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_gui_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_gui/2023.4.2/halsim_gui-2023.4.2-windowsx86-64.zip",
        sha256 = "8e0296852f2ef07c34aa0fc17a64ddfcb98d9e6dd3ea2eacd19b9b151e60e6ce",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.4.2/halsim_ws_client-2023.4.2-linuxarm32.zip",
        sha256 = "eb4332c3f86478bbab5a07de5a5a4f6fac7fc5bbaf74573579c2ebc50759faaf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.4.2/halsim_ws_client-2023.4.2-linuxarm64.zip",
        sha256 = "b6d3da8f3c8fc521d8fca0a5c7dc99cdc15ae394e674be7c3edb0420c13ba5e4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.4.2/halsim_ws_client-2023.4.2-linuxx86-64.zip",
        sha256 = "285fff4ec89c581bb9b3601d0ad13857a12f66a54393db4d5e59fd6c264c6657",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.4.2/halsim_ws_client-2023.4.2-osxuniversal.zip",
        sha256 = "33a77b5a3800d9dfbad223cad9728b239e55409500d9813e5e1506424a40c914",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_client_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_client/2023.4.2/halsim_ws_client-2023.4.2-windowsx86-64.zip",
        sha256 = "0da4543a04d97846e944c46dbdad1a2b1488693a62adca4762d7b221fcb69ce2",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.4.2/halsim_ws_server-2023.4.2-linuxarm32.zip",
        sha256 = "487eac9ba4af5ce81d115cae99213cae01601b7842bc81f019925fc5d7d238a6",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.4.2/halsim_ws_server-2023.4.2-linuxarm64.zip",
        sha256 = "af911c998f9c5775cc5e247a029f5144b4a7b8aad1fe09fa1017a9080d6926a4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.4.2/halsim_ws_server-2023.4.2-linuxx86-64.zip",
        sha256 = "3d1d02589cf89dc362b5b3d7d99328450d6cac213b2a36ae81a3b68b734ca18a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.4.2/halsim_ws_server-2023.4.2-osxuniversal.zip",
        sha256 = "6159b1d7d81e2a611faed9d8e784555da2d8f23bf6b5c2a8700503a1c10dc64a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_edu_wpi_first_halsim_halsim_ws_server_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/halsim/halsim_ws_server/2023.4.2/halsim_ws_server-2023.4.2-windowsx86-64.zip",
        sha256 = "effd5306281ea0db7f476c180a4aaef2058b504191a8bae998019ec308d7c941",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_shuffleboard_api",
        artifact = "edu.wpi.first.shuffleboard:api:2023.4.2",
        artifact_sha256 = "56cde71b3b72f81593a4e688a48abc26a2bb04e962c73625de322370ec09d071",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibj_wpilibj-java",
        artifact = "edu.wpi.first.wpilibj:wpilibj-java:2023.4.2",
        artifact_sha256 = "b1bfb57b295e692cb96f86276a84bd77e813b85912493152f056bffa76e2f49b",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_hal_hal-java",
        artifact = "edu.wpi.first.hal:hal-java:2023.4.2",
        artifact_sha256 = "fee26594da632d8f3653e51176ad61e800adbebb61d7ab2ba27fb75a6d373422",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpiutil_wpiutil-java",
        artifact = "edu.wpi.first.wpiutil:wpiutil-java:2023.4.2",
        artifact_sha256 = "331cacb16781317d19f8cbf7b7e860c03c16c56fd9cd8ac739a62de464a469d4",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpinet_wpinet-java",
        artifact = "edu.wpi.first.wpinet:wpinet-java:2023.4.2",
        artifact_sha256 = "d2ab680c0a195d19a241e2b08c4b633834201fb8aca4f842c1f2638537a702e7",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_ntcore_ntcore-java",
        artifact = "edu.wpi.first.ntcore:ntcore-java:2023.4.2",
        artifact_sha256 = "e1593e4aaf001059c2dc6da6c3306de1efa520ed7b53a05e3180f53b190c1f78",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpimath_wpimath-java",
        artifact = "edu.wpi.first.wpimath:wpimath-java:2023.4.2",
        artifact_sha256 = "1ab0bc26075675e21e0560d6fa858f8f7e5a95ed83f9f806ea1b28060b670f90",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cameraserver_cameraserver-java",
        artifact = "edu.wpi.first.cameraserver:cameraserver-java:2023.4.2",
        artifact_sha256 = "c2e8ae88fad7768cd46d42fe8e145f0cdc190c127dc9ad4624c337c890883560",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_cscore_cscore-java",
        artifact = "edu.wpi.first.cscore:cscore-java:2023.4.2",
        artifact_sha256 = "922e1b9269ffcc6c806873f273fe2c131e734ae2483c043e383155634588fb6b",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_edu_wpi_first_wpilibnewcommands_wpilibnewcommands-java",
        artifact = "edu.wpi.first.wpilibNewCommands:wpilibNewCommands-java:2023.4.2",
        artifact_sha256 = "37ad7cd5a28c20508ca633e2d8d36a095a6f2991f089bcaf803caa52049f93b2",
        server_urls = ["https://frcmaven.wpi.edu/release"],
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.4.2/SmartDashboard-2023.4.2-linuxx64.jar",
        sha256 = "c2c92f94ea43bc62207a049082d49721a18427df2ed8163085c8cb91ab28f1af",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.4.2/SmartDashboard-2023.4.2-macx64.jar",
        sha256 = "c06baf43ac47267610b626a5247950b900856899844b057ead871a25e671888b",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_smartdashboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SmartDashboard/2023.4.2/SmartDashboard-2023.4.2-winx64.jar",
        sha256 = "52ce0d48e720c15817a5df300b4adfba9f4e6c45d8223541bce87d1c688b45c0",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.4.2/PathWeaver-2023.4.2-linuxx64.jar",
        sha256 = "1a8c98179e216b67521beaf0e94eba43b1de651a102dbb1169a4811db56599aa",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.4.2/PathWeaver-2023.4.2-macx64.jar",
        sha256 = "097b0e5781760fdbfc0df9d8efe6b5053d26363099df3e812d7214ddb28b7773",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_pathweaver_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/PathWeaver/2023.4.2/PathWeaver-2023.4.2-winx64.jar",
        sha256 = "4bdb5cda553980872b846516e2a5ed5e6ab946c0d98b0b15c668a580c722ecb0",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_robotbuilder",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/RobotBuilder/2023.4.2/RobotBuilder-2023.4.2.jar",
        sha256 = "cd3f6948a4fdfdee292711bbdc897189ca4661f39773203740605e4705d1a97e",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_linuxx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.4.2/Shuffleboard-2023.4.2-linuxx64.jar",
        sha256 = "f0d4404c7a779d5956f7c1ddf964d1c376da45c509473bc3c00fcff1470ad64f",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_macx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.4.2/Shuffleboard-2023.4.2-macx64.jar",
        sha256 = "77eca553f574f1878a135ac2f9ec63eb304dba16cf54a9e64eaf682abf4f1b75",
    )
    maybe(
        http_jar,
        name = "__bazelrio_edu_wpi_first_tools_shuffleboard_winx64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Shuffleboard/2023.4.2/Shuffleboard-2023.4.2-winx64.jar",
        sha256 = "2c22f536cceafca9764474e81568a259738c27b10044db06d0e2bf67893e7bc6",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.4.2/Glass-2023.4.2-linuxarm32.zip",
        sha256 = "d6d6e0c967700a2c3401e57fc0782a76239f7aaddff99b6f5f2a69080b88a27c",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.4.2/Glass-2023.4.2-linuxarm64.zip",
        sha256 = "507ee5407c879f8260db17fdd937c21f1e3986788a2d5cbca4e1180669fa6b14",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.4.2/Glass-2023.4.2-linuxx86-64.zip",
        sha256 = "89116c333bf9e0f8327578b6a7c2476524ad8d3911e389222c6f1bcd6fce58b6",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.4.2/Glass-2023.4.2-osxuniversal.zip",
        sha256 = "ccccd7b6c401b8bec88f9e11b442cac8d5ceebec837e78aff1bf1ec2ba17f1e6",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_glass_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/Glass/2023.4.2/Glass-2023.4.2-windowsx86-64.zip",
        sha256 = "e165b9abd5818c50e0d7f0af317dbf6711077db5a636c279a1d452bdfd0b2eba",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm32",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.4.2/OutlineViewer-2023.4.2-linuxarm32.zip",
        sha256 = "ba0e82fac454f3a2956c364ba58744e0061444430d2dff84d2611631c8556dc0",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxarm64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.4.2/OutlineViewer-2023.4.2-linuxarm64.zip",
        sha256 = "52cced09825128d67bfd3c5ce6f825138556cadb5aa494020394f83dc2dda6aa",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.4.2/OutlineViewer-2023.4.2-linuxx86-64.zip",
        sha256 = "88b98c56544fd9767746aa58cb702ad0d01351dea9d102b9e6185897e7ca9881",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.4.2/OutlineViewer-2023.4.2-osxuniversal.zip",
        sha256 = "51289160237e1fb2d418eaf553700197e1c1fcb671c6ee93d5a33988e7e4ea4b",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_outlineviewer_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/OutlineViewer/2023.4.2/OutlineViewer-2023.4.2-windowsx86-64.zip",
        sha256 = "31fb17f70b637dd9a96c7034681c2f102e3a7c5e343d13eec7f361fc28c24236",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_linuxx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.4.2/SysId-2023.4.2-linuxx86-64.zip",
        sha256 = "17e79d9da8281e3256925d179ca99cc108d3fe3acd35c0c7b5bfc666f776ca67",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_osxuniversal",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.4.2/SysId-2023.4.2-osxuniversal.zip",
        sha256 = "fa30d4c75dcdb05c8fb1eea590132b3f00c03938dff353816fe2cd0e43896071",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )
    maybe(
        http_archive,
        name = "__bazelrio_edu_wpi_first_tools_sysid_windowsx86-64",
        url = "https://frcmaven.wpi.edu/release/edu/wpi/first/tools/SysId/2023.4.2/SysId-2023.4.2-windowsx86-64.zip",
        sha256 = "e7677e1333e9279feb6e8e46d77a5082ab1cd275a0674e4957a0a32bdf9f2ed0",
        build_file_content = "filegroup(name='all', srcs=glob(['**']), visibility=['//visibility:public'])",
    )