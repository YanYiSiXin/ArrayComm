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
include src/wave/examples/CMakeFiles/wave-simple-80211p.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/wave/examples/CMakeFiles/wave-simple-80211p.dir/compiler_depend.make

# Include the progress variables for this target.
include src/wave/examples/CMakeFiles/wave-simple-80211p.dir/progress.make

# Include the compile flags for this target's objects.
include src/wave/examples/CMakeFiles/wave-simple-80211p.dir/flags.make

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/flags.make
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: ../src/wave/examples/wave-simple-80211p.cc
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/wave/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o -MF CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o.d -o CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/wave/examples/wave-simple-80211p.cc

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/wave/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/wave/examples/wave-simple-80211p.cc > CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.i

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/wave/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/wave/examples/wave-simple-80211p.cc -o CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.s

# Object files for target wave-simple-80211p
wave__simple__80211p_OBJECTS = \
"CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o"

# External object files for target wave-simple-80211p
wave__simple__80211p_EXTERNAL_OBJECTS =

../build/src/wave/examples/ns3.37-wave-simple-80211p-debug: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/wave-simple-80211p.cc.o
../build/src/wave/examples/ns3.37-wave-simple-80211p-debug: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/build.make
../build/src/wave/examples/ns3.37-wave-simple-80211p-debug: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/src/wave/examples/ns3.37-wave-simple-80211p-debug: src/wave/examples/CMakeFiles/wave-simple-80211p.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/wave/examples/ns3.37-wave-simple-80211p-debug"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/wave/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wave-simple-80211p.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/wave/examples/CMakeFiles/wave-simple-80211p.dir/build: ../build/src/wave/examples/ns3.37-wave-simple-80211p-debug
.PHONY : src/wave/examples/CMakeFiles/wave-simple-80211p.dir/build

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/wave/examples && $(CMAKE_COMMAND) -P CMakeFiles/wave-simple-80211p.dir/cmake_clean.cmake
.PHONY : src/wave/examples/CMakeFiles/wave-simple-80211p.dir/clean

src/wave/examples/CMakeFiles/wave-simple-80211p.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/wave/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/wave/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/wave/examples/CMakeFiles/wave-simple-80211p.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/wave/examples/CMakeFiles/wave-simple-80211p.dir/depend

