cmake_minimum_required(VERSION 3.15)
project(Game)

set(CMAKE_CXX_STANDARD 14)

set(SOURCES main.cpp game/game.cpp game/game.h strategies/interface.h strategies/computer_interface.cpp strategies/computer_interface.h strategies/human.cpp strategies/human.h)

add_executable(Game ${SOURCES})

add_subdirectory(game)

target_link_libraries(Game game)