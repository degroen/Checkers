# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/degroen/clion-2019.3.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/degroen/clion-2019.3.3/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/degroen/Desktop/Game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/degroen/Desktop/Game/cmake-build-debug

# Include any dependencies generated for this target.
include game/CMakeFiles/game.dir/depend.make

# Include the progress variables for this target.
include game/CMakeFiles/game.dir/progress.make

# Include the compile flags for this target's objects.
include game/CMakeFiles/game.dir/flags.make

game/CMakeFiles/game.dir/field.cpp.o: game/CMakeFiles/game.dir/flags.make
game/CMakeFiles/game.dir/field.cpp.o: ../game/field.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/degroen/Desktop/Game/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object game/CMakeFiles/game.dir/field.cpp.o"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/game.dir/field.cpp.o -c /home/degroen/Desktop/Game/game/field.cpp

game/CMakeFiles/game.dir/field.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/field.cpp.i"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/degroen/Desktop/Game/game/field.cpp > CMakeFiles/game.dir/field.cpp.i

game/CMakeFiles/game.dir/field.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/field.cpp.s"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/degroen/Desktop/Game/game/field.cpp -o CMakeFiles/game.dir/field.cpp.s

game/CMakeFiles/game.dir/step.cpp.o: game/CMakeFiles/game.dir/flags.make
game/CMakeFiles/game.dir/step.cpp.o: ../game/step.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/degroen/Desktop/Game/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object game/CMakeFiles/game.dir/step.cpp.o"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/game.dir/step.cpp.o -c /home/degroen/Desktop/Game/game/step.cpp

game/CMakeFiles/game.dir/step.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/step.cpp.i"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/degroen/Desktop/Game/game/step.cpp > CMakeFiles/game.dir/step.cpp.i

game/CMakeFiles/game.dir/step.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/step.cpp.s"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/degroen/Desktop/Game/game/step.cpp -o CMakeFiles/game.dir/step.cpp.s

game/CMakeFiles/game.dir/cell.cpp.o: game/CMakeFiles/game.dir/flags.make
game/CMakeFiles/game.dir/cell.cpp.o: ../game/cell.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/degroen/Desktop/Game/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object game/CMakeFiles/game.dir/cell.cpp.o"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/game.dir/cell.cpp.o -c /home/degroen/Desktop/Game/game/cell.cpp

game/CMakeFiles/game.dir/cell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/game.dir/cell.cpp.i"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/degroen/Desktop/Game/game/cell.cpp > CMakeFiles/game.dir/cell.cpp.i

game/CMakeFiles/game.dir/cell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/game.dir/cell.cpp.s"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/degroen/Desktop/Game/game/cell.cpp -o CMakeFiles/game.dir/cell.cpp.s

# Object files for target game
game_OBJECTS = \
"CMakeFiles/game.dir/field.cpp.o" \
"CMakeFiles/game.dir/step.cpp.o" \
"CMakeFiles/game.dir/cell.cpp.o"

# External object files for target game
game_EXTERNAL_OBJECTS =

game/libgame.a: game/CMakeFiles/game.dir/field.cpp.o
game/libgame.a: game/CMakeFiles/game.dir/step.cpp.o
game/libgame.a: game/CMakeFiles/game.dir/cell.cpp.o
game/libgame.a: game/CMakeFiles/game.dir/build.make
game/libgame.a: game/CMakeFiles/game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/degroen/Desktop/Game/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libgame.a"
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && $(CMAKE_COMMAND) -P CMakeFiles/game.dir/cmake_clean_target.cmake
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
game/CMakeFiles/game.dir/build: game/libgame.a

.PHONY : game/CMakeFiles/game.dir/build

game/CMakeFiles/game.dir/clean:
	cd /home/degroen/Desktop/Game/cmake-build-debug/game && $(CMAKE_COMMAND) -P CMakeFiles/game.dir/cmake_clean.cmake
.PHONY : game/CMakeFiles/game.dir/clean

game/CMakeFiles/game.dir/depend:
	cd /home/degroen/Desktop/Game/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/degroen/Desktop/Game /home/degroen/Desktop/Game/game /home/degroen/Desktop/Game/cmake-build-debug /home/degroen/Desktop/Game/cmake-build-debug/game /home/degroen/Desktop/Game/cmake-build-debug/game/CMakeFiles/game.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : game/CMakeFiles/game.dir/depend

