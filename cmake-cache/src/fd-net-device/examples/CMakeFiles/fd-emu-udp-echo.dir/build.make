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
include src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/compiler_depend.make

# Include the progress variables for this target.
include src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/progress.make

# Include the compile flags for this target's objects.
include src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/flags.make

src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o: src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/flags.make
src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o: ../src/fd-net-device/examples/fd-emu-udp-echo.cc
src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx
src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o: CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx.gch
src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o: src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -MD -MT src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o -MF CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o.d -o CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o -c /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/examples/fd-emu-udp-echo.cc

src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.i"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -E /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/examples/fd-emu-udp-echo.cc > CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.i

src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.s"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device/examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Winvalid-pch -include /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles/stdlib_pch_exec.dir/cmake_pch.hxx -S /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/examples/fd-emu-udp-echo.cc -o CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.s

# Object files for target fd-emu-udp-echo
fd__emu__udp__echo_OBJECTS = \
"CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o"

# External object files for target fd-emu-udp-echo
fd__emu__udp__echo_EXTERNAL_OBJECTS =

../build/src/fd-net-device/examples/ns3.37-fd-emu-udp-echo-debug: src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/fd-emu-udp-echo.cc.o
../build/src/fd-net-device/examples/ns3.37-fd-emu-udp-echo-debug: src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/build.make
../build/src/fd-net-device/examples/ns3.37-fd-emu-udp-echo-debug: /usr/lib/x86_64-linux-gnu/libsqlite3.so
../build/src/fd-net-device/examples/ns3.37-fd-emu-udp-echo-debug: src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../build/src/fd-net-device/examples/ns3.37-fd-emu-udp-echo-debug"
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fd-emu-udp-echo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/build: ../build/src/fd-net-device/examples/ns3.37-fd-emu-udp-echo-debug
.PHONY : src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/build

src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/clean:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device/examples && $(CMAKE_COMMAND) -P CMakeFiles/fd-emu-udp-echo.dir/cmake_clean.cmake
.PHONY : src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/clean

src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/depend:
	cd /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pengpeng/Ns-3/workspace-test/ns-3-dev /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device/examples /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/fd-net-device/examples/CMakeFiles/fd-emu-udp-echo.dir/depend
