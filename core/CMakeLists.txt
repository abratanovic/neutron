cmake_minimum_required(VERSION 3.14)

project(core)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(mylib SHARED
        src/mylib.cpp
)

target_include_directories(mylib PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)