# CMake generated Testfile for 
# Source directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev
# Build directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-stdlib_pch_exec "ns3.37-stdlib_pch_exec-debug")
set_tests_properties(ctest-stdlib_pch_exec PROPERTIES  WORKING_DIRECTORY "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/" _BACKTRACE_TRIPLES "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1411;add_test;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1334;set_runtime_outputdirectory;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/CMakeLists.txt;133;process_options;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/CMakeLists.txt;0;")
subdirs("contrib/nr")
subdirs("src")
subdirs("examples")
subdirs("scratch")
subdirs("utils")
