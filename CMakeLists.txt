cmake_minimum_required(VERSION 3.15)
project(Checkers)

set(CMAKE_CXX_STANDARD 14)

set(SOURCES main.cpp)

add_executable(Checkers ${SOURCES})

add_subdirectory(game)
add_subdirectory(strategies)

target_link_libraries(Checkers game strategies)