# Install script for directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-nr-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-nr-debug.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-nr-debug.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/lib/libns3.37-nr-debug.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-nr-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-nr-debug.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-nr-debug.so"
         OLD_RPATH "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-nr-debug.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-phy-rx-trace.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-mac-rx-trace.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-point-to-point-epc-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-bearer-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-bearer-stats-connector.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-bearer-stats-simple.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/beamforming-helper-base.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/ideal-beamforming-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/realistic-beamforming-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/node-distribution-scenario-interface.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/grid-scenario-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/hexagonal-grid-scenario-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/file-scenario-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/cc-bwp-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-radio-environment-map-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-spectrum-value-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/scenario-parameters.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/three-gpp-ftp-m1-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/helper/nr-mac-scheduling-stats.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-net-device.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-gnb-net-device.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-ue-net-device.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-gnb-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-ue-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-spectrum-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-interference.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-pdu-info.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-header-vs.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-header-vs-ul.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-header-vs-dl.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-header-fs.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-header-fs-ul.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-header-fs-dl.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-short-bsr-ce.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-phy-mac-common.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma-rr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma-pf.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma-rr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma-pf.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-control-messages.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-spectrum-signal-parameters.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-radio-bearer-tag.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-amc.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-sched-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-csched-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-phy-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-lte-mi-error-model.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-gnb-mac.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-ue-mac.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-rrc-protocol-ideal.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-harq-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/bandwidth-part-gnb.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/bandwidth-part-ue.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/bwp-manager-gnb.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/bwp-manager-ue.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/bwp-manager-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-harq-process.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-harq-vector.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-harq-rr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-cqi-management.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-lcg.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ns3.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ofdma-mr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-tdma-mr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info-mr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info-rr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-ue-info-pf.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-error-model.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-t1.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-t2.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-ir.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-cc.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-ir-t1.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-ir-t2.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-cc-t1.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-eesm-cc-t2.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-error-model.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-ch-access-manager.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/beam-id.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/beamforming-vector.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/beam-manager.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/ideal-beamforming-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/realistic-beamforming-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/sfnsf.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/lena-error-model.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-srs.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-mac-scheduler-srs-default.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/nr-ue-power-control.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/realistic-bf-manager.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/model/beam-conf-id.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/utils/file-transfer-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/utils/file-transfer-application.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/utils/three-gpp-channel-model-param.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/contrib/nr/utils/distance-based-three-gpp-spectrum-propagation-loss-model.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/include/ns3/nr-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/contrib/nr/examples/cmake_install.cmake")

endif()

