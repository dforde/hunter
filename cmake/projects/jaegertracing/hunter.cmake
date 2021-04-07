# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME jaegertracing
    VERSION "0.7.0"
    URL "https://github.com/jaegertracing/jaeger-client-cpp/archive/v0.7.0.tar.gz"
    SHA1 "0e71d9c237c0d77b6bf5b2294ed32d520d4a6e27")

hunter_cmake_args(jaegertracing CMAKE_ARGS
    BUILD_TESTING=OFF)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(jaegertracing)
hunter_download(PACKAGE_NAME jaegertracing)
