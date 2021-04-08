# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME jaegertracing
    VERSION "0.7.1"
    URL "https://github.com/dforde/jaeger-client-cpp/archive/refs/tags/v0.7.0_custom.tar.gz"
    SHA1 "13209aa3f2d263719cfd35f743df48dc15a2a5bc")

hunter_cmake_args(jaegertracing CMAKE_ARGS
    BUILD_TESTING=OFF
    JAEGERTRACING_WITH_YAML_CPP=ON)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(jaegertracing)
hunter_download(PACKAGE_NAME jaegertracing)
