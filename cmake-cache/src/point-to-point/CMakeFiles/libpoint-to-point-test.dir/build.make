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
include src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/compiler_depend.make

# Include the progress variables for this target.
include src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/progress.make

# Include the compile flags for this target's objects.
include src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/flags.make

src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o: src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/flags.make
src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o: ../src/point-to-point/test/point-to-point-test.cc
src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx
src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o: CMakeFiles/stdlib_pch.dir/cmake_pch.hxx.gch
src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o: src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/point-to-point && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -MD -MT src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o -MF CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o.d -o CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/point-to-point/test/point-to-point-test.cc

src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/point-to-point && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/point-to-point/test/point-to-point-test.cc > CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.i

src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/point-to-point && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/point-to-point/test/point-to-point-test.cc -o CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.s

# Object files for target libpoint-to-point-test
libpoint__to__point__test_OBJECTS = \
"CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o"

# External object files for target libpoint-to-point-test
libpoint__to__point__test_EXTERNAL_OBJECTS =

../build/lib/libns3.37-point-to-point-test-debug.so: src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/test/point-to-point-test.cc.o
../build/lib/libns3.37-point-to-point-test-debug.so: src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/build.make
../build/lib/libns3.37-point-to-point-test-debug.so: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/lib/libns3.37-point-to-point-test-debug.so: src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../build/lib/libns3.37-point-to-point-test-debug.so"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/point-to-point && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libpoint-to-point-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/build: ../build/lib/libns3.37-point-to-point-test-debug.so
.PHONY : src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/build

src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/point-to-point && $(CMAKE_COMMAND) -P CMakeFiles/libpoint-to-point-test.dir/cmake_clean.cmake
.PHONY : src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/clean

src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/point-to-point /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/point-to-point /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/point-to-point/CMakeFiles/libpoint-to-point-test.dir/depend
