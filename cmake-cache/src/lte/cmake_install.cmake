# Install script for directory: /home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-lte-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-lte-debug.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-lte-debug.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/lib/libns3.37-lte-debug.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-lte-debug.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-lte-debug.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-lte-debug.so"
         OLD_RPATH "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libns3.37-lte-debug.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ns3" TYPE FILE FILES
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/emu-epc-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/cc-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/epc-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/lte-global-pathloss-database.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/lte-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/lte-hex-grid-enb-topology-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/lte-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/mac-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/no-backhaul-epc-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/phy-rx-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/phy-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/phy-tx-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/point-to-point-epc-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/radio-bearer-stats-calculator.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/radio-bearer-stats-connector.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/helper/radio-environment-map-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/a2-a4-rsrq-handover-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/a3-rsrp-handover-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/component-carrier-enb.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/component-carrier-ue.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/component-carrier.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/cqa-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-enb-application.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-enb-s1-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-gtpc-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-gtpu-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-mme-application.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-pgw-application.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-s11-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-s1ap-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-sgw-application.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-tft-classifier.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-tft.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-ue-nas.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-x2-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-x2-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/epc-x2.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/eps-bearer-tag.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/eps-bearer.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/fdbet-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/fdmt-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/fdtbfq-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/ff-mac-common.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/ff-mac-csched-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/ff-mac-sched-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-amc.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-anr-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-anr.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-as-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-asn1-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ccm-mac-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ccm-rrc-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-chunk-processor.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-common.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-control-messages.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-cmac-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-component-carrier-manager.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-cphy-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-mac.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-net-device.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-phy-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-enb-rrc.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ffr-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ffr-distributed-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ffr-enhanced-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ffr-rrc-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ffr-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ffr-soft-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-fr-hard-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-fr-no-op-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-fr-soft-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-fr-strict-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-handover-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-handover-management-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-harq-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-interference.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-mac-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-mi-error-model.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-net-device.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-pdcp-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-pdcp-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-pdcp-tag.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-pdcp.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-phy-tag.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-radio-bearer-info.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-radio-bearer-tag.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-am-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-am.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-sdu-status-tag.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-sequence-number.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-tag.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-tm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc-um.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rlc.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rrc-header.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rrc-protocol-ideal.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rrc-protocol-real.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-rrc-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-spectrum-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-spectrum-signal-parameters.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-spectrum-value-helper.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-ccm-rrc-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-cmac-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-component-carrier-manager.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-cphy-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-mac.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-net-device.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-phy-sap.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-power-control.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-ue-rrc.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/lte-vendor-specific-parameters.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/no-op-component-carrier-manager.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/no-op-handover-algorithm.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/pf-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/pss-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/rem-spectrum-phy.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/rr-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/simple-ue-component-carrier-manager.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/tdbet-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/tdmt-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/tdtbfq-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/src/lte/model/tta-ff-mac-scheduler.h"
    "/home/pengpeng/Ns-3/workspace-test/ns-3-dev/build/include/ns3/lte-module.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pengpeng/Ns-3/workspace-test/ns-3-dev/cmake-cache/src/lte/examples/cmake_install.cmake")

endif()

