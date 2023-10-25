# CMake generated Testfile for 
# Source directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device
# Build directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/fd-net-device
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(ctest-raw-sock-creator "ns3.37-raw-sock-creator-debug")
set_tests_properties(ctest-raw-sock-creator PROPERTIES  WORKING_DIRECTORY "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/src/fd-net-device/" _BACKTRACE_TRIPLES "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1411;add_test;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1465;set_runtime_outputdirectory;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/CMakeLists.txt;157;build_exec;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/CMakeLists.txt;0;")
add_test(ctest-tap-device-creator "ns3.37-tap-device-creator-debug")
set_tests_properties(ctest-tap-device-creator PROPERTIES  WORKING_DIRECTORY "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/src/fd-net-device/" _BACKTRACE_TRIPLES "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1411;add_test;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build-support/macros-and-definitions.cmake;1465;set_runtime_outputdirectory;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/CMakeLists.txt;193;build_exec;/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/fd-net-device/CMakeLists.txt;0;")
subdirs("examples")
