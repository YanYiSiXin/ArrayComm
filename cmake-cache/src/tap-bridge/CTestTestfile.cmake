# CMake generated Testfile for 
# Source directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/tap-bridge
# Build directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/tap-bridge
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-tap-creator "ns3.37-tap-creator-debug")
set_tests_properties(ctest-tap-creator PROPERTIES  WORKING_DIRECTORY "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/src/tap-bridge/" _BACKTRACE_TRIPLES "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1411;add_test;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1465;set_runtime_outputdirectory;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/tap-bridge/CMakeLists.txt;40;build_exec;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/tap-bridge/CMakeLists.txt;0;")
subdirs("examples")
