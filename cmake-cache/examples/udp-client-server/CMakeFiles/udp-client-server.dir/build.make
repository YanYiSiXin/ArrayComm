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
include examples/udp-client-server/CMakeFiles/udp-client-server.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include examples/udp-client-server/CMakeFiles/udp-client-server.dir/compiler_depend.make

# Include the progress variables for this target.
include examples/udp-client-server/CMakeFiles/udp-client-server.dir/progress.make

# Include the compile flags for this target's objects.
include examples/udp-client-server/CMakeFiles/udp-client-server.dir/flags.make

examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: examples/udp-client-server/CMakeFiles/udp-client-server.dir/flags.make
examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: ../examples/udp-client-server/udp-client-server.cc
examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o: examples/udp-client-server/CMakeFiles/udp-client-server.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/udp-client-server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o -MF CMakeFiles/udp-client-server.dir/udp-client-server.cc.o.d -o CMakeFiles/udp-client-server.dir/udp-client-server.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/udp-client-server/udp-client-server.cc

examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/udp-client-server.dir/udp-client-server.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/udp-client-server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/udp-client-server/udp-client-server.cc > CMakeFiles/udp-client-server.dir/udp-client-server.cc.i

examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/udp-client-server.dir/udp-client-server.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/udp-client-server && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/udp-client-server/udp-client-server.cc -o CMakeFiles/udp-client-server.dir/udp-client-server.cc.s

# Object files for target udp-client-server
udp__client__server_OBJECTS = \
"CMakeFiles/udp-client-server.dir/udp-client-server.cc.o"

# External object files for target udp-client-server
udp__client__server_EXTERNAL_OBJECTS =

../build/examples/udp-client-server/ns3.37-udp-client-server-debug: examples/udp-client-server/CMakeFiles/udp-client-server.dir/udp-client-server.cc.o
../build/examples/udp-client-server/ns3.37-udp-client-server-debug: examples/udp-client-server/CMakeFiles/udp-client-server.dir/build.make
../build/examples/udp-client-server/ns3.37-udp-client-server-debug: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/examples/udp-client-server/ns3.37-udp-client-server-debug: examples/udp-client-server/CMakeFiles/udp-client-server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../build/examples/udp-client-server/ns3.37-udp-client-server-debug"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/udp-client-server && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/udp-client-server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/udp-client-server/CMakeFiles/udp-client-server.dir/build: ../build/examples/udp-client-server/ns3.37-udp-client-server-debug
.PHONY : examples/udp-client-server/CMakeFiles/udp-client-server.dir/build

examples/udp-client-server/CMakeFiles/udp-client-server.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/udp-client-server && $(CMAKE_COMMAND) -P CMakeFiles/udp-client-server.dir/cmake_clean.cmake
.PHONY : examples/udp-client-server/CMakeFiles/udp-client-server.dir/clean

examples/udp-client-server/CMakeFiles/udp-client-server.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/examples/udp-client-server /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/udp-client-server /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/examples/udp-client-server/CMakeFiles/udp-client-server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/udp-client-server/CMakeFiles/udp-client-server.dir/depend

