cmake_minimum_required(VERSION 3.5)

set(CMAKE_C_STANDARD 99)

project(cs61-fa20-labs)

add_executable(eccentric eccentric.c)
add_executable(interactive_hello interactive_hello.c)
add_executable(segfault segfault_ex.c)
add_executable(no_segfault no_segfault_ex.c)
add_executable(ll_cycle ll_cycle.c
        ll_cycle.h
        test_ll_cycle.c)
