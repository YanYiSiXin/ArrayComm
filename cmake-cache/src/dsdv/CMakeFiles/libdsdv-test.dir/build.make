# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pengpeng/Ns-3/workspace-test/ns-3-dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache

# Include any dependencies generated for this target.
include src/dsdv/CMakeFiles/libdsdv-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/dsdv/CMakeFiles/libdsdv-test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/dsdv/CMakeFiles/libdsdv-test.dir/progress.make

# Include the compile flags for this target's objects.
include src/dsdv/CMakeFiles/libdsdv-test.dir/flags.make

src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o: src/dsdv/CMakeFiles/libdsdv-test.dir/flags.make
src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o: ../src/dsdv/test/dsdv-testcase.cc
src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o: src/dsdv/CMakeFiles/libdsdv-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o -MF CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o.d -o CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/dsdv/test/dsdv-testcase.cc

src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/dsdv/test/dsdv-testcase.cc > CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.i

src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/dsdv && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/dsdv/test/dsdv-testcase.cc -o CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.s

# Object files for target libdsdv-test
libdsdv__test_OBJECTS = \
"CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o"

# External object files for target libdsdv-test
libdsdv__test_EXTERNAL_OBJECTS =

../build/lib/libns3.37-dsdv-test-debug.so: src/dsdv/CMakeFiles/libdsdv-test.dir/test/dsdv-testcase.cc.o
../build/lib/libns3.37-dsdv-test-debug.so: src/dsdv/CMakeFiles/libdsdv-test.dir/build.make
../build/lib/libns3.37-dsdv-test-debug.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/lib/libns3.37-dsdv-test-debug.so: src/dsdv/CMakeFiles/libdsdv-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../build/lib/libns3.37-dsdv-test-debug.so"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/dsdv && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libdsdv-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/dsdv/CMakeFiles/libdsdv-test.dir/build: ../build/lib/libns3.37-dsdv-test-debug.so
.PHONY : src/dsdv/CMakeFiles/libdsdv-test.dir/build

src/dsdv/CMakeFiles/libdsdv-test.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/dsdv && $(CMAKE_COMMAND) -P CMakeFiles/libdsdv-test.dir/cmake_clean.cmake
.PHONY : src/dsdv/CMakeFiles/libdsdv-test.dir/clean

src/dsdv/CMakeFiles/libdsdv-test.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/dsdv /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/dsdv /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/dsdv/CMakeFiles/libdsdv-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/dsdv/CMakeFiles/libdsdv-test.dir/depend

