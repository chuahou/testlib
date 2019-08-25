cmake_minimum_required(VERSION 2.6)
project(testlib)
include_directories(include)

file(GLOB testlibsrc src/*.cpp)

add_library(testlib STATIC ${testlibsrc})

add_subdirectory(tests)
