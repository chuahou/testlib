cmake_minimum_required(VERSION 2.6)
add_executable(tests src/tests.cpp)
target_link_libraries(tests testlib)

add_custom_target(runtests
    COMMAND ./tests
    DEPENDS tests)
