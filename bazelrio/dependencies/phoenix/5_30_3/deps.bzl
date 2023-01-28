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
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.2/simCANCoder-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.2/simPigeonIMU-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.2/simProCANcoder-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.2/simProPigeon2-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.2/simProTalonFX-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.2/simTalonFX-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.2/simTalonSRX-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.2/simVictorSPX-23.0.2-headers.zip",
        sha256 = "b273d01d6cac80e5f346655f1c6fb84bd3ef67c52d24aab3a25e8ec2734c0a82",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.2/tools-23.0.2-headers.zip",
        sha256 = "5bfcf144d070d74b0e10a2284183c79ab07d86ff6bf1f9e41ba7067e628eccca",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.2/tools-sim-23.0.2-headers.zip",
        sha256 = "5bfcf144d070d74b0e10a2284183c79ab07d86ff6bf1f9e41ba7067e628eccca",
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
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.2/simCANCoder-23.0.2-windowsx86-64.zip",
        sha256 = "414f5c4011c5d776f89fe0151b5ea62ab8396460bd8f77d0ab17d0689b0f055c",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.2/simCANCoder-23.0.2-linuxx86-64.zip",
        sha256 = "2cffe9ab3d2bc5776fae93641e5ed57b416b001cd3bdc7afa6cd4b46296befdc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simcancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simCANCoder/23.0.2/simCANCoder-23.0.2-osxuniversal.zip",
        sha256 = "c236a0ed0230ce42435709e232cbbd5f9c1d6afa55a48738b39c0cba42afc2a5",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.2/simPigeonIMU-23.0.2-windowsx86-64.zip",
        sha256 = "8a70d2aaf6ffb2ed8ad4e1640649d4b0494fb7d4f9a9d1cb7b50ac249dbeacb0",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.2/simPigeonIMU-23.0.2-linuxx86-64.zip",
        sha256 = "e98fbca913205b548d06b769185619a01f3e6b6108f3803e0da6b9193b73dec3",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpigeonimu_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simPigeonIMU/23.0.2/simPigeonIMU-23.0.2-osxuniversal.zip",
        sha256 = "498a169315a4c141cbd9bfccf03a48b611117ff0d11e11ca1ea286cdc8404ad4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.2/simProCANcoder-23.0.2-windowsx86-64.zip",
        sha256 = "8ba166a1e16e03b9cdb1fb577196877542e555f842e820a00b72a8e5cab36ad4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.2/simProCANcoder-23.0.2-linuxx86-64.zip",
        sha256 = "40fabcc2142d17022e2feefc441b6d159ec8bafd202355cf6eda918aecd80a74",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprocancoder_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProCANcoder/23.0.2/simProCANcoder-23.0.2-osxuniversal.zip",
        sha256 = "0e5b2d701a8811e92fd47380faacad2e18ac9562b1b64f85c35c0283c1ea0f3e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.2/simProPigeon2-23.0.2-windowsx86-64.zip",
        sha256 = "42bad85a6103ca25ca3c969cca664138038510459d2afcaa3b5e13526fb5c589",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.2/simProPigeon2-23.0.2-linuxx86-64.zip",
        sha256 = "4241ef2884c7f8894c7972ceb1b0a0f01cc253db72a7f8840bbd7342d0eb3d80",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simpropigeon2_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProPigeon2/23.0.2/simProPigeon2-23.0.2-osxuniversal.zip",
        sha256 = "5869e3db4b2aae909a58b81975be0fae43e025dedf99f3d214eadc01fead2819",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.2/simProTalonFX-23.0.2-windowsx86-64.zip",
        sha256 = "648c1e579632a3e16f6ab716c36b42f9daf4806d1a3d36b97f1ef8ee94dbd61d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.2/simProTalonFX-23.0.2-linuxx86-64.zip",
        sha256 = "fb3bedd9033d1a87f681f0c014dd067f5c400a53c692e6c979e2100fcf5ae920",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simprotalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simProTalonFX/23.0.2/simProTalonFX-23.0.2-osxuniversal.zip",
        sha256 = "e54a83e9263965404261a5ad487e3082d2bff1942168f49af806cbd5eec9715f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.2/simTalonFX-23.0.2-windowsx86-64.zip",
        sha256 = "c0b6ac2bf230ef64fb8a6a0edeeef6cb2e0074bdbaf830d2801a64cfb8f5e485",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.2/simTalonFX-23.0.2-linuxx86-64.zip",
        sha256 = "bb566e115d88f5838dd5f26a62e1fb12a7a97bbc83babfc53ec9f6e99fb4d812",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonfx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonFX/23.0.2/simTalonFX-23.0.2-osxuniversal.zip",
        sha256 = "1134497115f9044e2ad206b5a5a669f53345b63492d8a6034cca7f34e4ba772f",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.2/simTalonSRX-23.0.2-windowsx86-64.zip",
        sha256 = "78e8ccc02db1f472eda57fb809bfd74ea67d7452ad4b4f2dd15640fba38a1d0d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.2/simTalonSRX-23.0.2-linuxx86-64.zip",
        sha256 = "bad241df041c383edf9b1aef3cadc3d543948b87b28403079f0782bccb17956d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simtalonsrx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simTalonSRX/23.0.2/simTalonSRX-23.0.2-osxuniversal.zip",
        sha256 = "2aa29cd6ce8f12124fb8b30a786be765c6f7a7dd4e52ac0c27d059d4c2f652fe",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.2/simVictorSPX-23.0.2-windowsx86-64.zip",
        sha256 = "dea9141c9313e048c7c8237fd85edf8faade09c51e650ce0d473e880759263bf",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.2/simVictorSPX-23.0.2-linuxx86-64.zip",
        sha256 = "ea95b0cd8c52a5948b8f4da298521d174db509ca0b0f9b45f55a2431f4953c1e",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_simvictorspx_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/simVictorSPX/23.0.2/simVictorSPX-23.0.2-osxuniversal.zip",
        sha256 = "3128ddc65d3cfb01abe9d81fa3056c3e952d79ae63496be006dc9aa78b5846f4",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.2/tools-23.0.2-windowsx86-64.zip",
        sha256 = "5484386e56e0f165739adf257a6e3592b359a1295eb4c2cf9f88b1140def8650",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.2/tools-23.0.2-linuxx86-64.zip",
        sha256 = "d548d613433a835733277401ad3803c4645e041e65495666c309db63f88a17dc",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_tools_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/tools/23.0.2/tools-23.0.2-linuxathena.zip",
        sha256 = "49dff1e14b866c303cd01e1bf077a4ae03f2e99fe3965cfc6a6df4c3e535fba9",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.2/tools-sim-23.0.2-windowsx86-64.zip",
        sha256 = "a2cea0cd57d43797c263ea3ce146166657078df37e792061946e0c43e46b5272",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.2/tools-sim-23.0.2-linuxx86-64.zip",
        sha256 = "944cdd634baf647efe74a200f0f747adf3a3ef4330e7f8e993538d14ebc8e893",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_tools-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/tools-sim/23.0.2/tools-sim-23.0.2-osxuniversal.zip",
        sha256 = "d7b56f9ec249febbd33aba0fd69905890b7d16248882ea9682bfbc27fb62893a",
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