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
include examples/routing/CMakeFiles/rip-simple-network.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/routing/CMakeFiles/rip-simple-network.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/routing/CMakeFiles/rip-simple-network.dir/progress.make

# Include the compile flags for this target's objects.
include examples/routing/CMakeFiles/rip-simple-network.dir/flags.make

examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o: examples/routing/CMakeFiles/rip-simple-network.dir/flags.make
examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o: ../examples/routing/rip-simple-network.cc
examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o: examples/routing/CMakeFiles/rip-simple-network.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/routing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o -MF CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o.d -o CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/routing/rip-simple-network.cc

examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/routing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/routing/rip-simple-network.cc > CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.i

examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/routing && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/routing/rip-simple-network.cc -o CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.s

# Object files for target rip-simple-network
rip__simple__network_OBJECTS = \
"CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o"

# External object files for target rip-simple-network
rip__simple__network_EXTERNAL_OBJECTS =

../build/examples/routing/ns3.37-rip-simple-network-debug: examples/routing/CMakeFiles/rip-simple-network.dir/rip-simple-network.cc.o
../build/examples/routing/ns3.37-rip-simple-network-debug: examples/routing/CMakeFiles/rip-simple-network.dir/build.make
../build/examples/routing/ns3.37-rip-simple-network-debug: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/examples/routing/ns3.37-rip-simple-network-debug: examples/routing/CMakeFiles/rip-simple-network.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/routing/ns3.37-rip-simple-network-debug"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/routing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rip-simple-network.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/routing/CMakeFiles/rip-simple-network.dir/build: ../build/examples/routing/ns3.37-rip-simple-network-debug
.PHONY : examples/routing/CMakeFiles/rip-simple-network.dir/build

examples/routing/CMakeFiles/rip-simple-network.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/routing && $(CMAKE_COMMAND) -P CMakeFiles/rip-simple-network.dir/cmake_clean.cmake
.PHONY : examples/routing/CMakeFiles/rip-simple-network.dir/clean

examples/routing/CMakeFiles/rip-simple-network.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/routing /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/routing /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/routing/CMakeFiles/rip-simple-network.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/routing/CMakeFiles/rip-simple-network.dir/depend

