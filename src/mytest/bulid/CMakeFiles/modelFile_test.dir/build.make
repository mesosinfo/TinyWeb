# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/tinyweb/src/mytest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tinyweb/src/mytest/bulid

# Include any dependencies generated for this target.
include CMakeFiles/modelFile_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/modelFile_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/modelFile_test.dir/flags.make

CMakeFiles/modelFile_test.dir/modelFile_test.cc.o: CMakeFiles/modelFile_test.dir/flags.make
CMakeFiles/modelFile_test.dir/modelFile_test.cc.o: ../modelFile_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tinyweb/src/mytest/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/modelFile_test.dir/modelFile_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/modelFile_test.dir/modelFile_test.cc.o -c /home/tinyweb/src/mytest/modelFile_test.cc

CMakeFiles/modelFile_test.dir/modelFile_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/modelFile_test.dir/modelFile_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tinyweb/src/mytest/modelFile_test.cc > CMakeFiles/modelFile_test.dir/modelFile_test.cc.i

CMakeFiles/modelFile_test.dir/modelFile_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/modelFile_test.dir/modelFile_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tinyweb/src/mytest/modelFile_test.cc -o CMakeFiles/modelFile_test.dir/modelFile_test.cc.s

CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.requires:

.PHONY : CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.requires

CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.provides: CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.requires
	$(MAKE) -f CMakeFiles/modelFile_test.dir/build.make CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.provides.build
.PHONY : CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.provides

CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.provides.build: CMakeFiles/modelFile_test.dir/modelFile_test.cc.o


# Object files for target modelFile_test
modelFile_test_OBJECTS = \
"CMakeFiles/modelFile_test.dir/modelFile_test.cc.o"

# External object files for target modelFile_test
modelFile_test_EXTERNAL_OBJECTS =

modelFile_test: CMakeFiles/modelFile_test.dir/modelFile_test.cc.o
modelFile_test: CMakeFiles/modelFile_test.dir/build.make
modelFile_test: tiny_http.out/libtiny_http_model.a
modelFile_test: tiny_base.out/libtiny_base_model.a
modelFile_test: CMakeFiles/modelFile_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tinyweb/src/mytest/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable modelFile_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/modelFile_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/modelFile_test.dir/build: modelFile_test

.PHONY : CMakeFiles/modelFile_test.dir/build

CMakeFiles/modelFile_test.dir/requires: CMakeFiles/modelFile_test.dir/modelFile_test.cc.o.requires

.PHONY : CMakeFiles/modelFile_test.dir/requires

CMakeFiles/modelFile_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/modelFile_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/modelFile_test.dir/clean

CMakeFiles/modelFile_test.dir/depend:
	cd /home/tinyweb/src/mytest/bulid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tinyweb/src/mytest /home/tinyweb/src/mytest /home/tinyweb/src/mytest/bulid /home/tinyweb/src/mytest/bulid /home/tinyweb/src/mytest/bulid/CMakeFiles/modelFile_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/modelFile_test.dir/depend

