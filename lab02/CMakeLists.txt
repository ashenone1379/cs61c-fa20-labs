CMAKE_MINIMUM_REQUIRED(VERSION 3.5)

SET(CMAKE_C_STANDARD 99)

project(cs61c-lab02)

add_executable(test_bit_ops
        test_bit_ops.c
        bit_ops.c
        bit_ops.h
)

add_executable(vector_test
        vector-test.c
        vector.c
        vector.h
)