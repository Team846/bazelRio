load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_phoenix_5_30_3_dependencies():
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-headers.zip",
        sha256 = "bbf59aca82c4bb136011dbd30ea5478109de3ec7b5cd8eb41a6b6f819516dead",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-headers.zip",
        sha256 = "3f443b2978d393dc818df1799173a0639ba54fd9f40df5cdf17b87c5c113301b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-headers.zip",
        sha256 = "89307ef60c0a1504ab6dec7710549fe6ee0980177defa3f23fd3825f1348ec32",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-headers.zip",
        sha256 = "89307ef60c0a1504ab6dec7710549fe6ee0980177defa3f23fd3825f1348ec32",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-headers.zip",
        sha256 = "ebc69d4b1f1f868dcb0ac297cffdb270a42f6293b5239e2b044d69140a3133fa",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-headers.zip",
        sha256 = "53bf4769a89ab04f2b0414f3d9756cd2467d1726b42891d89bd02c671237723b",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-windowsx86-64.zip",
        sha256 = "148da705853d2b89bc3b0fe727ac4e5ad895864bc385dff72976b15f5cd6891d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-linuxx86-64.zip",
        sha256 = "d89c0aec08d0433f1f1e4488945948ea18882d7988f00ce8f7842d6f88f5cf55",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_api-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/api-cpp/5.30.3/api-cpp-5.30.3-linuxathena.zip",
        sha256 = "518a69563e306b0dbe555ae5bf7040301345474a78b4910bba881238f4cbadff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-windowsx86-64.zip",
        sha256 = "52001726eded0e25935f306249ae1eeb3e3bc991de6b6fd85c910666d5abc2a8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-linuxx86-64.zip",
        sha256 = "0c33bac3e345dc1aad5ebc3371c4a4ed27d428fbd44a0195331db90ecec5a45a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_api-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/api-cpp-sim/5.30.3/api-cpp-sim-5.30.3-osxuniversal.zip",
        sha256 = "f050957758306c2a498dfdfd3d52435a2f9c2ad85a33419ae2b48080cdafa557",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-windowsx86-64.zip",
        sha256 = "7154de07b39c22822f4a09ad6d257da971b0402817a71df0cd1189c557a2d5d3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-linuxx86-64.zip",
        sha256 = "998cdd33f9d07163066792684946fedfa2703f8e974b01886567536155fc672b",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_cci_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/cci/5.30.3/cci-5.30.3-linuxathena.zip",
        sha256 = "b74b3f96fd208389c822d2d04d65da1b3948287996ff45e1cbe852043291c13a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-windowsx86-64.zip",
        sha256 = "6dfc0c6a064926d5e2d827bd8f80f697a8da86f12b0023d279049a408da8930a",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-linuxx86-64.zip",
        sha256 = "5c3d4f41a40d02346419bfc25c4f5dd656252516fbd577ee1f6a2936884aeb18",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_cci-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/cci-sim/5.30.3/cci-sim-5.30.3-osxuniversal.zip",
        sha256 = "6e5156a627865f378ef0b4fcb2af52af8049f0be64a773f4463e15471be5c917",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-windowsx86-64.zip",
        sha256 = "3583028bfd8fb47c3a74b1a70faaeb086bc463defa3d74c46979897f0d6f3ace",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-linuxx86-64.zip",
        sha256 = "885f56af7a3cab1394d3e5b4bb483d64e0304fe3507ebb64de9e74cb020ec726",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/wpiapi-cpp/5.30.3/wpiapi-cpp-5.30.3-linuxathena.zip",
        sha256 = "132e88ddff5cf12e4d46c6c6106847792842470e6d963f16fd286031c8312de4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-windowsx86-64.zip",
        sha256 = "3c5baf3707bc570191b93149eb409bf1448db7670ce516ef260bcd446b459fd8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-linuxx86-64.zip",
        sha256 = "baa1b378fabfa80bd1caf951298e88ffc7adcc21ad5f18ac8d3d5a691c72cbca",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenix_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenix/sim/wpiapi-cpp-sim/5.30.3/wpiapi-cpp-sim-5.30.3-osxuniversal.zip",
        sha256 = "a269eea3f7f212656c7b2dc11b3a1274a6e290c60735cd92d6aa8436707a1a00",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_api-java",
        artifact = "com.ctre.phoenix:api-java:5.30.3",
        artifact_sha256 = "123c5254cd19320def5d12e13bbe08da041a9bc50ad4d49dcb3d414762c72f85",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenix_wpiapi-java",
        artifact = "com.ctre.phoenix:wpiapi-java:5.30.3",
        artifact_sha256 = "419076bb97b2fbeaaea396903cca472403847e11bcf3f0bd769bc479b2cf575e",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )