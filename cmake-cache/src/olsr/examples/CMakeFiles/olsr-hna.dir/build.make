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
include src/olsr/examples/CMakeFiles/olsr-hna.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/olsr/examples/CMakeFiles/olsr-hna.dir/compiler_depend.make

# Include the progress variables for this target.
include src/olsr/examples/CMakeFiles/olsr-hna.dir/progress.make

# Include the compile flags for this target's objects.
include src/olsr/examples/CMakeFiles/olsr-hna.dir/flags.make

src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o: src/olsr/examples/CMakeFiles/olsr-hna.dir/flags.make
src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o: ../src/olsr/examples/olsr-hna.cc
src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o: src/olsr/examples/CMakeFiles/olsr-hna.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/olsr/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o -MF CMakeFiles/olsr-hna.dir/olsr-hna.cc.o.d -o CMakeFiles/olsr-hna.dir/olsr-hna.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/olsr/examples/olsr-hna.cc

src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/olsr-hna.dir/olsr-hna.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/olsr/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/olsr/examples/olsr-hna.cc > CMakeFiles/olsr-hna.dir/olsr-hna.cc.i

src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/olsr-hna.dir/olsr-hna.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/olsr/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/olsr/examples/olsr-hna.cc -o CMakeFiles/olsr-hna.dir/olsr-hna.cc.s

# Object files for target olsr-hna
olsr__hna_OBJECTS = \
"CMakeFiles/olsr-hna.dir/olsr-hna.cc.o"

# External object files for target olsr-hna
olsr__hna_EXTERNAL_OBJECTS =

../build/src/olsr/examples/ns3.37-olsr-hna-debug: src/olsr/examples/CMakeFiles/olsr-hna.dir/olsr-hna.cc.o
../build/src/olsr/examples/ns3.37-olsr-hna-debug: src/olsr/examples/CMakeFiles/olsr-hna.dir/build.make
../build/src/olsr/examples/ns3.37-olsr-hna-debug: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/src/olsr/examples/ns3.37-olsr-hna-debug: src/olsr/examples/CMakeFiles/olsr-hna.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/olsr/examples/ns3.37-olsr-hna-debug"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/olsr/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/olsr-hna.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/olsr/examples/CMakeFiles/olsr-hna.dir/build: ../build/src/olsr/examples/ns3.37-olsr-hna-debug
.PHONY : src/olsr/examples/CMakeFiles/olsr-hna.dir/build

src/olsr/examples/CMakeFiles/olsr-hna.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/olsr/examples && $(CMAKE_COMMAND) -P CMakeFiles/olsr-hna.dir/cmake_clean.cmake
.PHONY : src/olsr/examples/CMakeFiles/olsr-hna.dir/clean

src/olsr/examples/CMakeFiles/olsr-hna.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/olsr/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/olsr/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/olsr/examples/CMakeFiles/olsr-hna.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/olsr/examples/CMakeFiles/olsr-hna.dir/depend

