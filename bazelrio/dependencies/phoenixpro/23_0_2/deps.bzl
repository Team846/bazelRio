load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_jar")
load("@bazel_tools//tools/build_defs/repo:jvm.bzl", "jvm_maven_import_external")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazelrio//:deps_utils.bzl", "cc_library_headers", "cc_library_shared", "cc_library_sources", "cc_library_static")

def setup_phoenixpro_23_0_2_dependencies():
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
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.2/wpiapi-cpp-23.0.2-headers.zip",
        sha256 = "e1bce83586cc36f8e1c088a1d74f1ecb8398d3d9cf4bfaf09df4c31ee70a66ce",
        build_file_content = cc_library_headers,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_headers",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.2/wpiapi-cpp-sim-23.0.2-headers.zip",
        sha256 = "e1bce83586cc36f8e1c088a1d74f1ecb8398d3d9cf4bfaf09df4c31ee70a66ce",
        build_file_content = cc_library_headers,
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
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.2/wpiapi-cpp-23.0.2-windowsx86-64.zip",
        sha256 = "555b6d4b0d26b24e4858686e6cbc690c93b73a08e77c95274d9bb636707e47d8",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.2/wpiapi-cpp-23.0.2-linuxx86-64.zip",
        sha256 = "b1d28e9e55cf8286946a5abebeda138d4da80c1ed878fa91270de0b781a279ff",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_wpiapi-cpp_linuxathena",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/wpiapi-cpp/23.0.2/wpiapi-cpp-23.0.2-linuxathena.zip",
        sha256 = "69dcd21bbcbfae6a660701a05646aac77f7b11aa77707c130c5cf72bdede4667",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_windowsx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.2/wpiapi-cpp-sim-23.0.2-windowsx86-64.zip",
        sha256 = "955345391a933c46511a8653f33f62d217f20a8265a7ecf2703bd9535e2e6e3d",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_linuxx86-64",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.2/wpiapi-cpp-sim-23.0.2-linuxx86-64.zip",
        sha256 = "afa1ba883ed829d4b87382cf6aef5893cbcaf3e1f05e8cbbe7ba541ddf9aeb20",
        build_file_content = cc_library_shared,
    )
    maybe(
        http_archive,
        "__bazelrio_com_ctre_phoenixpro_sim_wpiapi-cpp-sim_osxuniversal",
        url = "https://maven.ctr-electronics.com/release/com/ctre/phoenixpro/sim/wpiapi-cpp-sim/23.0.2/wpiapi-cpp-sim-23.0.2-osxuniversal.zip",
        sha256 = "8ef025f6b7cb8b03c2a26347de0e44cdec07be211145b9f189329dd9ce26bd38",
        build_file_content = cc_library_shared,
    )
    maybe(
        jvm_maven_import_external,
        name = "__bazelrio_com_ctre_phoenixpro_wpiapi-java",
        artifact = "com.ctre.phoenixpro:wpiapi-java:23.0.2",
        artifact_sha256 = "7b2457352b1fc9bbd8e89f9a638417d38087670af70fcaa422d352d88015e842",
        server_urls = ["https://maven.ctr-electronics.com/release"],
    )