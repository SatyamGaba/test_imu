# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/test_imu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/test_imu

# Include any dependencies generated for this target.
include CMakeFiles/trySendData.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/trySendData.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trySendData.dir/flags.make

CMakeFiles/trySendData.dir/main.cpp.o: CMakeFiles/trySendData.dir/flags.make
CMakeFiles/trySendData.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/test_imu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/trySendData.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trySendData.dir/main.cpp.o -c /root/test_imu/main.cpp

CMakeFiles/trySendData.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trySendData.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/test_imu/main.cpp > CMakeFiles/trySendData.dir/main.cpp.i

CMakeFiles/trySendData.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trySendData.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/test_imu/main.cpp -o CMakeFiles/trySendData.dir/main.cpp.s

# Object files for target trySendData
trySendData_OBJECTS = \
"CMakeFiles/trySendData.dir/main.cpp.o"

# External object files for target trySendData
trySendData_EXTERNAL_OBJECTS =

trySendData: CMakeFiles/trySendData.dir/main.cpp.o
trySendData: CMakeFiles/trySendData.dir/build.make
trySendData: /usr/lib/aarch64-linux-gnu/libiio.so
trySendData: CMakeFiles/trySendData.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/test_imu/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable trySendData"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trySendData.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/trySendData.dir/build: trySendData

.PHONY : CMakeFiles/trySendData.dir/build

CMakeFiles/trySendData.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trySendData.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trySendData.dir/clean

CMakeFiles/trySendData.dir/depend:
	cd /root/test_imu && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/test_imu /root/test_imu /root/test_imu /root/test_imu /root/test_imu/CMakeFiles/trySendData.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trySendData.dir/depend

