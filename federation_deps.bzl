"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-04-17T12:03:37Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/77099ee80d15004ddbac96234761c0a564479131.zip",
           "https://github.com/bazelbuild/rules_cc/archive/77099ee80d15004ddbac96234761c0a564479131.zip"
      ],
      strip_prefix = "rules_cc-77099ee80d15004ddbac96234761c0a564479131",
      sha256 = "f1a11c4b697d988d8ea3de71d7f79cab9c8f599b32017f203a5e037709a6a3b9",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-04-09T15:00:47Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip",
           "https://github.com/bazelbuild/rules_python/archive/a0fbf98d4e3a232144df4d0d80b577c7a693b570.zip"
      ],
      strip_prefix = "rules_python-a0fbf98d4e3a232144df4d0d80b577c7a693b570",
      sha256 = "98c9b903f6e8fe20b7e56d19c4822c8c49a11b475bd4ec0ca6a564e8bc5d5fa2",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-04-17T15:58:29Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/b35973e3e35cb1eccb086d6a549c253c49579474.zip",
           "https://github.com/abseil/abseil-cpp/archive/b35973e3e35cb1eccb086d6a549c253c49579474.zip"
      ],
      strip_prefix = "abseil-cpp-b35973e3e35cb1eccb086d6a549c253c49579474",
      sha256 = "9ab2dbebf6f209d6680bd3088a837c07f0788852ab81700aef6e2f2a746a7acb",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-04-16T17:33:10Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip",
           "https://github.com/google/googletest/archive/dcc92d0ab6c4ce022162a23566d44f673251eee4.zip"
      ],
      strip_prefix = "googletest-dcc92d0ab6c4ce022162a23566d44f673251eee4",
      sha256 = "a6ab7c7d6fd4dd727f6012b5d85d71a73d3aa1274f529ecd4ad84eb9ec4ff767",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-04-17T16:31:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/ecc1685340f58f7fe6b707036bc0bb1fccabb0c1.zip",
           "https://github.com/google/benchmark/archive/ecc1685340f58f7fe6b707036bc0bb1fccabb0c1.zip"
      ],
      strip_prefix = "benchmark-ecc1685340f58f7fe6b707036bc0bb1fccabb0c1",
      sha256 = "4a6dc2a0a20e26765f4f4b9bf9678fa7dc33d858ff14efb428a021750d1cfe24",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-04-19T20:14:49Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/22d0ada9d04ea6a691bf65b167d0c667db01f31a.zip",
           "https://github.com/google/tcmalloc/archive/22d0ada9d04ea6a691bf65b167d0c667db01f31a.zip"
      ],
      strip_prefix = "tcmalloc-22d0ada9d04ea6a691bf65b167d0c667db01f31a",
      sha256 = "1337ce44aba9bdf2b6b67c8ac4d1face940cd5e61e35c6ac7cf8a85a1f49773c",
    )

    # ********** zlib (pinned to 1.2.11) *****************
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
