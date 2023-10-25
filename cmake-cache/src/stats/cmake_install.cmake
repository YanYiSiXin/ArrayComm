# Install script for directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-stats-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-stats-debug.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-stats-debug.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/lib/libns3.37-stats-debug.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-stats-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-stats-debug.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-stats-debug.so"
         OLD_RPATH "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-stats-debug.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/sqlite-data-output.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/sqlite-output.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/helper/file-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/helper/gnuplot-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/average.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/basic-data-calculators.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/boolean-probe.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/data-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/data-collection-object.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/data-collector.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/data-output-interface.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/double-probe.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/file-aggregator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/get-wildcard-matches.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/gnuplot-aggregator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/gnuplot.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/histogram.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/omnet-data-output.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/probe.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/stats.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/time-data-calculators.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/time-probe.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/time-series-adaptor.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/uinteger-16-probe.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/uinteger-32-probe.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/stats/model/uinteger-8-probe.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/include/ns3/stats-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/stats/examples/cmake_install.cmake")

endif()

