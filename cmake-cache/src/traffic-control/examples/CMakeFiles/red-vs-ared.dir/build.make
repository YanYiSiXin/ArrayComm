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
include src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/compiler_depend.make

# Include the progress variables for this target.
include src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/progress.make

# Include the compile flags for this target's objects.
include src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/flags.make

src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o: src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/flags.make
src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o: ../src/traffic-control/examples/red-vs-ared.cc
src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o: src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/traffic-control/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o -MF CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o.d -o CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/traffic-control/examples/red-vs-ared.cc

src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/traffic-control/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/traffic-control/examples/red-vs-ared.cc > CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.i

src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/traffic-control/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/traffic-control/examples/red-vs-ared.cc -o CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.s

# Object files for target red-vs-ared
red__vs__ared_OBJECTS = \
"CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o"

# External object files for target red-vs-ared
red__vs__ared_EXTERNAL_OBJECTS =

../build/src/traffic-control/examples/ns3.37-red-vs-ared-debug: src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/red-vs-ared.cc.o
../build/src/traffic-control/examples/ns3.37-red-vs-ared-debug: src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/build.make
../build/src/traffic-control/examples/ns3.37-red-vs-ared-debug: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/src/traffic-control/examples/ns3.37-red-vs-ared-debug: src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/traffic-control/examples/ns3.37-red-vs-ared-debug"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/traffic-control/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/red-vs-ared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/build: ../build/src/traffic-control/examples/ns3.37-red-vs-ared-debug
.PHONY : src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/build

src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/traffic-control/examples && $(CMAKE_COMMAND) -P CMakeFiles/red-vs-ared.dir/cmake_clean.cmake
.PHONY : src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/clean

src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/traffic-control/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/traffic-control/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/traffic-control/examples/CMakeFiles/red-vs-ared.dir/depend

