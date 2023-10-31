/* -*-  Mode: C++; c-file-style: "gnu"; indent-tabs-mode:nil; -*- */
/*
 *   Copyright (c) 2019 Centre Tecnologic de Telecomunicacions de Catalunya (CTTC)
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License version 2 as
 *   published by the Free Software Foundation;
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, write to the Free Software
 *   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */
#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/mobility-module.h"
#include "ns3/internet-module.h"
#include "ns3/applications-module.h"
#include "ns3/point-to-point-helper.h"
#include "ns3/eps-bearer-tag.h"
#include "ns3/nr-module.h"
#include "ns3/antenna-module.h"
#include <unordered_map>

// Do not put your test classes in namespace ns3.  You may find it useful
// to use the using directive to access the ns3 namespace directly

using namespace ns3;
/**
  * \file test-timings.cc
  * \ingroup test
  *
  * \brief Check numerology timings. The test, that is run for 1 numerology,
  * checks that the slot number of certain events is the same as the one
  * pre-recorded by an expert, that spent time in checking that such timing is
  * correct. We currently check only RAR and DL_DCI messages, improvements are
  * more than welcome.
  */


static const std::unordered_map<NrControlMessage::messageType, bool, std::hash<int> > messageLog =
{
  { NrControlMessage::messageType::UL_DCI,      false },
  { NrControlMessage::messageType::DL_DCI, false },
  { NrControlMessage::messageType::DL_CQI,   false },
  { NrControlMessage::messageType::MIB,      false },
  { NrControlMessage::messageType::SIB1,     false },
  { NrControlMessage::messageType::RACH_PREAMBLE, false },
  { NrControlMessage::messageType::RAR,      false },
  { NrControlMessage::messageType::BSR,      false },
  { NrControlMessage::messageType::DL_HARQ,  false },
  { NrControlMessage::messageType::SR,       false },
};

typedef std::unordered_map<NrControlMessage::messageType, uint64_t, std::hash<int> > TypeToResult;
typedef std::unordered_map<uint32_t, TypeToResult> NumerologyToType;

class NrTimingsNewTest : public TestCase
{
public:
  NrTimingsNewTest (const std::string &name, uint32_t numerology, bool verbose);
  virtual ~NrTimingsNewTest ();

private:
  virtual void DoRun (void);
  void GnbPhyTx (SfnSf sfn, uint16_t nodeId, uint16_t rnti,
                 uint8_t ccId, Ptr<const NrControlMessage> msg);
  void UePhyRx (SfnSf sfn, uint16_t nodeId, uint16_t rnti,
                uint8_t ccId, Ptr<const NrControlMessage> msg);


  uint32_t m_numerology;
  bool verbose {false};
};

NrTimingsNewTest::NrTimingsNewTest (const std::string &name, uint32_t numerology, bool verbose)
  : TestCase (name),
    m_numerology (numerology),
    verbose (verbose)
{}

NrTimingsNewTest::~NrTimingsNewTest ()
{}



static const std::unordered_map <NrControlMessage::messageType, std::string, std::hash<int> > TYPE_TO_STRING =
{
  { NrControlMessage::messageType::UL_DCI,   "UL_DCI" },
  { NrControlMessage::messageType::DL_DCI,   "DL_DCI" },
  { NrControlMessage::messageType::DL_CQI,   "DL_CQI" },
  { NrControlMessage::messageType::MIB,      "MIB" },
  { NrControlMessage::messageType::SIB1,     "SIB1" },
  { NrControlMessage::messageType::RACH_PREAMBLE, "RACH_PREAMBLE" },
  { NrControlMessage::messageType::RAR,      "RAR" },
  { NrControlMessage::messageType::BSR,      "BSR" },
  { NrControlMessage::messageType::DL_HARQ,  "DL_HARQ" },
  { NrControlMessage::messageType::SR,       "SR" },
};

void
NrTimingsNewTest::GnbPhyTx (SfnSf sfn, [[maybe_unused]]  uint16_t nodeId, [[maybe_unused]]  uint16_t rnti, [[maybe_unused]]  uint8_t ccId, Ptr<const NrControlMessage> msg)
{
  static NumerologyToType res =
  {
    {
      4, {
           { NrControlMessage::RAR, SfnSf (1, 6, 4, 4).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 0, 2, 4).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 4).Normalize () },
         },
    },
    {
      3, {
           { NrControlMessage::RAR, SfnSf (1, 6, 4, 3).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 0, 2, 3).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 3).Normalize () },
         },

    },
    {
      2, {
           { NrControlMessage::RAR, SfnSf (1, 7, 0, 2).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 0, 2, 2).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 2).Normalize () },
         },
    },
    {
      1, {
           //{ NrControlMessage::RAR, SfnSf (1, 8, 0, 1).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 8, 0, 1).Normalize () },
		   { NrControlMessage::UL_DCI, SfnSf (41, 0, 1, 1).Normalize () },
		   //{ NrControlMessage::UL_DCI, SfnSf (36, 0, 0, 1).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 1).Normalize () },
         },
    },
    {
      0, {
           { NrControlMessage::RAR, SfnSf (2, 0, 0, 0).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 2, 0, 0).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 0).Normalize () },
         },
    },
  };

  if (verbose && messageLog.at (msg->GetMessageType ()))
    {
      std::cerr << __func__ << ": " << TYPE_TO_STRING.at (msg->GetMessageType ())
                << " at " << sfn << " numerology " << m_numerology
                << " slot count " << sfn.Normalize () << " " << Simulator::Now () << std::endl;
    }

  auto numMap = res.find (m_numerology);
  if (numMap != res.end ())
    { 
      auto resMap = numMap->second.find (msg->GetMessageType ());
	  
      if (resMap != numMap->second.end ())
        {
          uint64_t slotN = resMap->second;
		  if (sfn.Normalize ()==slotN)
		  {
		    //xiaoying:Compare whether the control message types in the actual slot and the expected slot are the same
		    NS_TEST_ASSERT_MSG_EQ (TYPE_TO_STRING.at(resMap->first), TYPE_TO_STRING.at (msg->GetMessageType ()),
                                 "The message type " << TYPE_TO_STRING.at (msg->GetMessageType ()) <<
                                 " was supposed to be sent at slot " << slotN << " but instead we sent it at " <<
                                 sfn.Normalize () << " in numerology " << m_numerology);
		    //std::cout <<"sfn.Normalize ()  "<<sfn.Normalize ()<<std::endl;
		    //std::cout <<"slotN  "<<slotN<<std::endl;
		  }
          return;
        }
    }

  if (verbose && messageLog.at (msg->GetMessageType ()))
    {
      std::cerr << __func__ << ": " << TYPE_TO_STRING.at (msg->GetMessageType ())
                << " not found in the result map;" << std::endl;
    }
}


void
NrTimingsNewTest::UePhyRx (SfnSf sfn, [[maybe_unused]] uint16_t nodeId, [[maybe_unused]] uint16_t rnti, [[maybe_unused]] uint8_t ccId, Ptr<const NrControlMessage> msg)
{

  static NumerologyToType res =
  {
    {
      4, {
           { NrControlMessage::RAR, SfnSf (1, 6, 5, 4).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 0, 2, 4).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 4).Normalize () },
         },
    },
    {
      3, {
           { NrControlMessage::RAR, SfnSf (1, 6, 5, 3).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 0, 2, 3).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 3).Normalize () },
         },
    },
    {
      2, {
           { NrControlMessage::RAR, SfnSf (1, 7, 1, 2).Normalize () } ,
           { NrControlMessage::DL_DCI, SfnSf (40, 0, 2, 2).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 2).Normalize () },
         },
    },
    {
      1, {
           //{ NrControlMessage::RAR, SfnSf (1, 8, 1, 1).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 8, 0, 1).Normalize () },
		   { NrControlMessage::UL_DCI, SfnSf (41, 0, 1, 1).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 1).Normalize () },
         },
    },
    {
      0, {
           { NrControlMessage::RAR, SfnSf (2, 1, 0, 0).Normalize () },
           { NrControlMessage::DL_DCI, SfnSf (40, 2, 0, 0).Normalize () },
           //{ NrControlMessage::DCI, SfnSf (80, 0, 2, 0).Normalize () },
         },
    },
  };

  if (verbose && messageLog.at (msg->GetMessageType ()))
    {
      std::cerr << __func__ << ": " << TYPE_TO_STRING.at (msg->GetMessageType ())
                << " at " << sfn << " numerology " << m_numerology
                << " slot count " << sfn.Normalize () << " " << Simulator::Now () << std::endl;
    }

  auto numMap = res.find (m_numerology);
  if (numMap != res.end ())
    {
      auto resMap = numMap->second.find (msg->GetMessageType ());
      if (resMap != numMap->second.end ())
        {
          uint64_t slotN = resMap->second;
          if (sfn.Normalize ()==slotN)
		  {
		    //xiaoying:Compare whether the control message types in the actual slot and the expected slot are the same
		    NS_TEST_ASSERT_MSG_EQ (TYPE_TO_STRING.at(resMap->first), TYPE_TO_STRING.at (msg->GetMessageType ()),
                                 "The message type " << TYPE_TO_STRING.at (msg->GetMessageType ()) <<
                                 " was supposed to be sent at slot " << slotN << " but instead we sent it at " <<
                                 sfn.Normalize () << " in numerology " << m_numerology);
		    std::cout <<"sfn.Normalize ()  "<<sfn.Normalize ()<<std::endl;
		    std::cout <<"slotN  "<<slotN<<std::endl;
		  }
          return;
        }
    }

  if (verbose && messageLog.at (msg->GetMessageType ()))
    {
      std::cerr << __func__ << ": " << TYPE_TO_STRING.at (msg->GetMessageType ())
                << " not found in the result map;" << std::endl;
    }
}



// Ugly pre-processor macro, to speed up writing. The best way would be to use
// static functions... so please forget them, and remember that they work
// only here in the DoRun function, as it is all hard-coded
#define GET_ENB_PHY(X, Y) nrHelper->GetGnbPhy (enbNetDev.Get (X), Y)
#define GET_ENB_MAC(X, Y) nrHelper->GetGnbMac (enbNetDev.Get (X), Y)

#define GET_UE_PHY(X, Y) nrHelper->GetUePhy (ueNetDev.Get (X), Y)
#define GET_UE_MAC(X, Y) nrHelper->GetUeMac (ueNetDev.Get (X), Y)

void
NrTimingsNewTest::DoRun (void)
{
 
  //Whether gNB and UE antenna arrays support
  bool crossPolarizedGnb = true;
  bool crossPolarizedUe = true;
  
  //xiaoying:if useAWGN is true,use AWGN channel model
  bool useAWGN = true;

  //Number of rows and columns of antennas of Gnb and Ue
  uint16_t numRowsGnb = 2;
  uint16_t numColumnsGnb = 2;
  uint16_t numRowsUe = 1;
  uint16_t numColumnsUe = 1;

  // Traffic parameters (that we will use inside this script):
  uint32_t udpPacketSize = 1000;
  //xiaoying: For 2x2 MIMO and NR MCS table 2, packet interval is 6400 ns to
  // reach 1250Mbit/s to meet full buffer
  Time packetInterval = NanoSeconds (6000);

  //xiaoying: min distance between the gNB and the UE
  uint16_t gnbUeDistance =10; //meters

  // Simulation parameters. Please don't use double to indicate seconds; use
  // ns-3 Time values which use integers to avoid portability issues.
  //xiaoying:Configure up and down line simulation time and send time respectively
  Time simTime = MilliSeconds (1000);
  Time udpAppStartTimeDl = MilliSeconds (400);
  Time udpAppStartTimeUl = MilliSeconds (400);
  Time udpAppStopTimeDl = MilliSeconds (1000);   // Let's give 1s to end the tx
  Time udpAppStopTimeUl = MilliSeconds (1000);   // Let's give 1s to end the tx

  // NR parameters. We will take the input from the command line, and then we
  // will pass them inside the NR module.
  //xiaoying:Configure parameters that meet the demand list
  //SCS:30 kHZ,bandwidth:100MHZ,centralFrequency : 4.9GHZ,ueTxPower :30 dBm
  uint16_t numerology = 1;
  double centralFrequency = 4.9e9;
  double bandwidth = 100e6;
  double gnbTxPower = 30; //dBm
  double ueTxPower = 30; //dBm  defalt 23
  uint16_t fixedRankIndicator = 2; //!<zhongwei: fixedRankIndicator set to 2
  bool useFixedRi = true; //!<zhongwei: useFixedRi set to true and fixedRankIndicator set to 2 to use fixed two streams at current context otherwise set to false
  double ro = 0;
  uint16_t updatePeriodMs = 100;
  uint16_t mcsTable = 2;

  // The polarization slant angle of first and second subarray in degrees
  double polSlantAngle1 = 0.0;
  double polSlantAngle2 = 90.0;

  // whether the cross polarization correlation is parameterized, when set to false correlation is calculated as per 3gpp channel model
  //zhongwei: parametrizedCorrelation set to false to use 3GPP channel model
  bool parametrizedCorrelation = false; 
  //zhongwei: scheme parameters (determine the ratio of the inter-stream interference)
  double InterStreamInterferenceRatio = 1.0;

  //zhongwei: scheme parameters (determine to use XNEW scheme or LENA scheme)
  bool UseRawDlData = false;
  
  //<xiaoying>:Enable Uplink/Downlink
  bool m_isUplink=true;
  bool m_isDownlink=true;

  /*
   * Check if the frequency is in the allowed range.
   * If you need to add other checks, here is the best position to put them.
   */
  NS_ABORT_IF (centralFrequency > 100e9);

  
  /*
   * Default values for the simulation. We are progressively removing all
   * the instances of SetDefault, but we need it for legacy code (LTE)
   */
  Config::SetDefault ("ns3::LteRlcUm::MaxTxBufferSize", UintegerValue (999999999));

  /*
   * Attributes of ThreeGppChannelModel still cannot be set in our way.
   */
  Config::SetDefault ("ns3::ThreeGppChannelModel::UpdatePeriod", TimeValue (MilliSeconds (updatePeriodMs)));
  //xiaoying:configure channel model:true is AWGN,false is ThreeGppChannelModel
  Config::SetDefault ("ns3::ThreeGppChannelModel::useAWGN", BooleanValue (useAWGN));
  Config::SetDefault ("ns3::ThreeGppChannelModelParam::Ro", DoubleValue (ro));
  Config::SetDefault ("ns3::ThreeGppChannelModelParam::ParametrizedCorrelation", BooleanValue (parametrizedCorrelation));
  Config::SetDefault ("ns3::ThreeGppSpectrumPropagationLossModel::ChannelModel", StringValue ("ns3::ThreeGppChannelModelParam"));

  /*
   * Create the scenario. In our examples, we heavily use helpers that setup
   * the gnbs and ue following a pre-defined pattern. Please have a look at the
   * GridScenarioHelper documentation to see how the nodes will be distributed.
   */
  int64_t randomStream = 1;

  /*
   * Assign mobility to the gNB and UEs.
   *  1. Set mobility model type.
   *  2. Store the positions in ListPositionAllocator for the gNB and UE
   *  3. Install mobility model
   */

  /*
   * Create NodeContainer for gNB and UE
   */
  NodeContainer gnbContainer;
  gnbContainer.Create (1);
  NodeContainer ueContainer;
  ueContainer.Create (1);

  MobilityHelper mobility;
  mobility.SetMobilityModel ("ns3::ConstantPositionMobilityModel");
  Ptr<ListPositionAllocator> positionAllocUe = CreateObject<ListPositionAllocator> ();
  positionAllocUe->Add (Vector (0.0, 0.0, 10.0));
  positionAllocUe->Add (Vector (gnbUeDistance, 0.0, 1.5));
  mobility.SetPositionAllocator (positionAllocUe);
  mobility.Install (gnbContainer);
  mobility.Install (ueContainer);

  /* The default topology is the following:
   *
   *         gNB..........(20 m)..........UE
   *   (0.0, 0.0, 10.0)               (20, 0.0, 1.5)
   */

  /*
   * Setup the NR module. We create the various helpers needed for the
   * NR simulation:
   * - EpcHelper, which will setup the core network
   * - IdealBeamformingHelper, which takes care of the beamforming part
   * - NrHelper, which takes care of creating and connecting the various
   * part of the NR stack
   */
  Ptr<NrPointToPointEpcHelper> epcHelper = CreateObject<NrPointToPointEpcHelper> ();
  Ptr<IdealBeamformingHelper> idealBeamformingHelper = CreateObject<IdealBeamformingHelper>();
  Ptr<NrHelper> nrHelper = CreateObject<NrHelper> ();

  // Put the pointers inside nrHelper
  nrHelper->SetBeamformingHelper (idealBeamformingHelper);
  nrHelper->SetEpcHelper (epcHelper);
  
  //<xiaoying >: configure RR scheduler scheme
  nrHelper->SetSchedulerTypeId (TypeId::LookupByName ("ns3::NrMacSchedulerOfdmaRR"));

  //<xiaoying> :configure ULCTRL/DL CTRL/SRS symbol ,have SRS in F slot ,
  //if UseRawDlData is true,F slot symbol allocation using the original design(LENA scheme), otherwise XNEW scheme
  nrHelper->SetSchedulerAttribute ("DlCtrlSymbols", UintegerValue (1));
  nrHelper->SetSchedulerAttribute ("UlCtrlSymbols", UintegerValue (1));
  nrHelper->SetSchedulerAttribute ("SrsSymbols", UintegerValue (1));
  nrHelper->SetSchedulerAttribute ("StartingMcsUl", UintegerValue (27));
  nrHelper->SetSchedulerAttribute ("StartingMcsDl", UintegerValue (27));
  nrHelper->SetSchedulerAttribute ("EnableSrsInUlSlots", BooleanValue (false));
  nrHelper->SetSchedulerAttribute ("EnableSrsInFSlots", BooleanValue (true));
  nrHelper->SetSchedulerAttribute ("UseRawDlData", BooleanValue (UseRawDlData));


  /*
   * Spectrum division. We create one operational band, containing
   * one component carrier, and a single bandwidth part
   * centered at the frequency specified by the input parameters.
   * We will use the StreetCanyon channel modeling.
   */
  CcBwpCreator ccBwpCreator;
  const uint8_t numCcPerBand = 1;  // single CC

  // Create the configuration for the CcBwpHelper. SimpleOperationBandConf creates
  // a single BWP per CC
  CcBwpCreator::SimpleOperationBandConf bandConf (centralFrequency, bandwidth, numCcPerBand, BandwidthPartInfo::UMi_StreetCanyon);

  // By using the configuration created, it is time to make the operation bands
  OperationBandInfo band = ccBwpCreator.CreateOperationBandContiguousCc (bandConf);

  /*
   * The configured spectrum division is:
   * ------------Band--------------
   * ------------CC1----------------
   * ------------BWP1---------------
   */

  nrHelper->SetChannelConditionModelAttribute ("UpdatePeriod", TimeValue (MilliSeconds (updatePeriodMs)));
  nrHelper->SetPathlossAttribute ("ShadowingEnabled", BooleanValue (false));
  //zhongwei: InterStreamInterferenceRatio set to 1.0 to use multi-data scheme or to use LENA scheme
  nrHelper->SetUeSpectrumAttribute ("InterStreamInterferenceRatio", DoubleValue (InterStreamInterferenceRatio));

  /*
   * Initialize channel and pathloss, plus other things inside band. If needed,
   * the band configuration can be done manually, but we leave it for more
   * sophisticated examples. For the moment, this method will take care
   * of all the spectrum initialization needs.
   */
  nrHelper->InitializeOperationBand (&band);

  /*
   * allBwps contains all the spectrum configuration needed by the nrHelper
   * to install a device.
   */
  BandwidthPartInfoPtrVector allBwps;
  allBwps = CcBwpCreator::GetAllBwps ({band});

  /*
   * allBwps contains all the spectrum configuration needed for the nrHelper.
   */

  Packet::EnableChecking ();
  Packet::EnablePrinting ();

  /*
   *  Attributes valid for all the nodes
   */
  // Error Model: gNB and UE with same spectrum error model.
  std::string errorModel = "ns3::NrEesmIrT" + std::to_string (mcsTable);
  nrHelper->SetDlErrorModel (errorModel);
  nrHelper->SetUlErrorModel (errorModel);

  // Both DL and UL AMC will have the same model behind.
  nrHelper->SetGnbDlAmcAttribute ("AmcModel", EnumValue (NrAmc::ErrorModel));
  nrHelper->SetGnbUlAmcAttribute ("AmcModel", EnumValue (NrAmc::ErrorModel));
  //xiaoying:configure number of reference subcarriers per RB
  nrHelper->SetGnbDlAmcAttribute ("NumRefScPerRb", UintegerValue(0));
  nrHelper->SetGnbUlAmcAttribute ("NumRefScPerRb", UintegerValue(0));

  // Beamforming method
  idealBeamformingHelper->SetAttribute ("BeamformingMethod", TypeIdValue (DirectPathBeamforming::GetTypeId ()));

  // Core latency
  epcHelper->SetAttribute ("S1uLinkDelay", TimeValue (MilliSeconds (0)));

  // Antennas for all the UEs
  nrHelper->SetUeAntennaAttribute ("NumRows", UintegerValue (numRowsUe));
  nrHelper->SetUeAntennaAttribute ("NumColumns", UintegerValue (numColumnsUe));
  nrHelper->SetUeAntennaAttribute ("AntennaElement", PointerValue (CreateObject<IsotropicAntennaModel> ()));

  // UE rank indicator
  if (useFixedRi)
    {
      // it makes more sense to configure the rank indicator value
      // if useFixedRi is true.
      nrHelper->SetUePhyAttribute ("UseFixedRi", BooleanValue (useFixedRi));
      nrHelper->SetUePhyAttribute ("FixedRankIndicator", UintegerValue (fixedRankIndicator));
    }
  else
    {
      nrHelper->SetUePhyAttribute ("UseFixedRi", BooleanValue (useFixedRi));
    }

  // Antennas for all the gNbs
  nrHelper->SetGnbAntennaAttribute ("NumRows", UintegerValue (numRowsGnb));
  nrHelper->SetGnbAntennaAttribute ("NumColumns", UintegerValue (numColumnsGnb));
  nrHelper->SetGnbAntennaAttribute ("AntennaElement", PointerValue (CreateObject<ThreeGppAntennaModel> ()));

  uint32_t bwpId = 0;

  // gNb routing between Bearer and bandwidth part
  nrHelper->SetGnbBwpManagerAlgorithmAttribute ("NGBR_LOW_LAT_EMBB", UintegerValue (bwpId));

  // UE routing between Bearer and bandwidth part
  nrHelper->SetUeBwpManagerAlgorithmAttribute ("NGBR_LOW_LAT_EMBB", UintegerValue (bwpId));
  //zhongwei: UseRawDlData set to false to use XNEW scheme or to use LENA scheme
  nrHelper->SetGnbPhyAttribute ("UseRawDlData", BooleanValue (UseRawDlData));
  /*
   * We miss many other parameters. By default, not configuring them is equivalent
   * to use the default values. Please, have a look at the documentation to see
   * what are the default values for all the attributes you are not seeing here.
   */

  /*
   * We have configured the attributes we needed. Now, install and get the pointers
   * to the NetDevices, which contains all the NR stack:
   */

  uint8_t subArraysGnb = 0, subArraysUe = 0;

  if (crossPolarizedGnb)
    {
      subArraysGnb = 2;
    }
  else
    {
      subArraysGnb = 1;
    }

  if (crossPolarizedUe)
    {
      subArraysUe = 2;
    }
  else
    {
      subArraysUe = 1;
    }

  NetDeviceContainer enbNetDev = nrHelper->InstallGnbDevice (gnbContainer, allBwps, subArraysGnb);
  NetDeviceContainer ueNetDev = nrHelper->InstallUeDevice (ueContainer, allBwps, subArraysUe);

  /*
   * Fix the random stream throughout the nr, propagation, and spectrum
   * modules classes. This configuration is extremely important for the
   * reproducibility of the results.
   */
  randomStream += nrHelper->AssignStreams (enbNetDev, randomStream);
  randomStream += nrHelper->AssignStreams (ueNetDev, randomStream);

  /*
   * Per Node attribute configuration. Get the node and change the attributes we
   * have to setup.
   */

  // Get the first netdevice (enbNetDev.Get (0)) and the first bandwidth part (0)
  // and set the attribute.
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->SetAttribute ("Numerology", UintegerValue (numerology));
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->SetAttribute ("TxPower", DoubleValue (gnbTxPower));
  
  //xiaoying :Configure GNB TDD pattern,N0/N1/N2/RbOverhead to meet K0/K1/K2/RB overhead
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->SetAttribute ("Pattern", StringValue ("DL|DL|DL|F|UL|"));
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->SetAttribute ("N2Delay", UintegerValue (3));
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->SetAttribute ("N0Delay", UintegerValue (0));
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->SetAttribute ("N1Delay", UintegerValue (5));
  //xiaoying:Test whether the timeslot of UL DCI/DL DCI sent by the physical layer of the base station and the slot of UL DCI/DL DCI received by the physical layer of the user
  // are consistent with the expected slot
  GET_ENB_PHY (0,0)->TraceConnectWithoutContext ("GnbPhyTxedCtrlMsgsTrace", MakeCallback (&NrTimingsNewTest::GnbPhyTx, this));
  GET_UE_PHY (0,0)->TraceConnectWithoutContext ("UePhyRxedCtrlMsgsTrace", MakeCallback (&NrTimingsNewTest::UePhyRx, this));
  
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->SetAttribute ("RbOverhead", DoubleValue (0.0172));//RBnum=273
  double polarizationFirstSubArray = (polSlantAngle1 * M_PI) / 180.0; // converting to radians
  double polarizationSecondSubArray = (polSlantAngle2 * M_PI) / 180.0; // converting to radians
  ObjectVectorValue gnbSpectrumPhys;
  Ptr<NrSpectrumPhy> nrSpectrumPhy;
  nrHelper->GetGnbPhy (enbNetDev.Get (0), 0)->GetAttribute ("NrSpectrumPhyList", gnbSpectrumPhys);
  nrSpectrumPhy = gnbSpectrumPhys.Get (0)->GetObject <NrSpectrumPhy> ();
  nrSpectrumPhy->GetAntenna ()->GetObject<UniformPlanarArray> ()->SetAttribute ("PolSlantAngle", DoubleValue (polarizationFirstSubArray));
  if (gnbSpectrumPhys.GetN () == 2)
    {
      nrSpectrumPhy = gnbSpectrumPhys.Get (1)->GetObject <NrSpectrumPhy> ();
      nrSpectrumPhy->GetAntenna ()->GetObject<UniformPlanarArray> ()->SetAttribute ("PolSlantAngle", DoubleValue (polarizationSecondSubArray));
    }

  // for UE
  nrHelper->GetUePhy (ueNetDev.Get (0), 0)->SetAttribute ("TxPower", DoubleValue (ueTxPower));
  //nrHelper->GetUePhy (ueNetDev.Get (0), 0)->SetAttribute ("Pattern", StringValue ("DL|DL|DL|F|UL|"));//<xiaoying : UE TDD pattern>
  ObjectVectorValue ueSpectrumPhys;
  nrHelper->GetUePhy (ueNetDev.Get (0), 0)->GetAttribute ("NrSpectrumPhyList", ueSpectrumPhys);
  nrSpectrumPhy = ueSpectrumPhys.Get (0)->GetObject <NrSpectrumPhy> ();
  nrSpectrumPhy->GetAntenna ()->GetObject<UniformPlanarArray> ()->SetAttribute ("PolSlantAngle", DoubleValue (polarizationFirstSubArray));
  if (ueSpectrumPhys.GetN () == 2)
    {
      nrSpectrumPhy = ueSpectrumPhys.Get (1)->GetObject <NrSpectrumPhy> ();
      nrSpectrumPhy->GetAntenna ()->GetObject<UniformPlanarArray> ()->SetAttribute ("PolSlantAngle", DoubleValue (polarizationSecondSubArray));
    }


  // When all the configuration is done, explicitly call UpdateConfig ()

  for (auto it = enbNetDev.Begin (); it != enbNetDev.End (); ++it)
    {
      DynamicCast<NrGnbNetDevice> (*it)->UpdateConfig ();
    }

  for (auto it = ueNetDev.Begin (); it != ueNetDev.End (); ++it)
    {
      DynamicCast<NrUeNetDevice> (*it)->UpdateConfig ();
    }


  // From here, it is standard NS3. In the future, we will create helpers
  // for this part as well.

  // create the Internet and install the IP stack on the UEs
  // get SGW/PGW and create a single RemoteHost
  Ptr<Node> pgw = epcHelper->GetPgwNode ();
  NodeContainer remoteHostContainer;
  remoteHostContainer.Create (1);
  Ptr<Node> remoteHost = remoteHostContainer.Get (0);
  InternetStackHelper internet;
  internet.Install (remoteHostContainer);

  // connect a remoteHost to pgw. Setup routing too
  PointToPointHelper p2ph;
  p2ph.SetDeviceAttribute ("DataRate", DataRateValue (DataRate ("100Gb/s")));
  p2ph.SetDeviceAttribute ("Mtu", UintegerValue (2500));
  p2ph.SetChannelAttribute ("Delay", TimeValue (Seconds (0.000)));
  NetDeviceContainer internetDevices = p2ph.Install (pgw, remoteHost);
  Ipv4AddressHelper ipv4h;
  Ipv4StaticRoutingHelper ipv4RoutingHelper;
  ipv4h.SetBase ("1.0.0.0", "255.0.0.0");
  Ipv4InterfaceContainer internetIpIfaces = ipv4h.Assign (internetDevices);
      // in this container, interface 0 is the pgw, 1 is the remoteHost
  Ipv4Address remoteHostAddr = internetIpIfaces.GetAddress (1);
  Ptr<Ipv4StaticRouting> remoteHostStaticRouting = ipv4RoutingHelper.GetStaticRouting (remoteHost->GetObject<Ipv4> ());
  remoteHostStaticRouting->AddNetworkRouteTo (Ipv4Address ("7.0.0.0"), Ipv4Mask ("255.0.0.0"), 1);
  internet.Install (ueContainer);


  Ipv4InterfaceContainer ueIpIface = epcHelper->AssignUeIpv4Address (NetDeviceContainer (ueNetDev));
  // Set the default gateway for the UE
  Ptr<Ipv4StaticRouting> ueStaticRouting = ipv4RoutingHelper.GetStaticRouting (ueContainer.Get (0)->GetObject<Ipv4> ());
  ueStaticRouting->SetDefaultRoute (epcHelper->GetUeDefaultGatewayAddress (), 1);

  // attach UE to the closest eNB
  nrHelper->AttachToClosestEnb (ueNetDev, enbNetDev);

  /*
   *xiaoying: Install DL/UL traffic part.
   */

  uint16_t dlPort = 1234;
  uint16_t ulPort = 2000;
  ApplicationContainer clientAppsDl;
  ApplicationContainer serverAppsDl;
  ApplicationContainer clientAppsUl;
  ApplicationContainer serverAppsUl;

  if (m_isUplink)
    {
      UdpServerHelper ulPacketSinkHelper (ulPort);
      serverAppsUl.Add (ulPacketSinkHelper.Install (remoteHost));
	  UdpClientHelper ulClient (remoteHostAddr, ulPort);
      ulClient.SetAttribute ("MaxPackets", UintegerValue (0xFFFFFFFF));
      ulClient.SetAttribute ("PacketSize", UintegerValue (udpPacketSize));
      ulClient.SetAttribute ("Interval", TimeValue (packetInterval));   // we try to saturate, we just need to measure during a short time, how much traffic can handle each BWP

      // configure here UDP traffic flows
      for (uint32_t j = 0; j < ueContainer.GetN (); ++j)
        {

          
          clientAppsUl.Add (ulClient.Install (ueContainer.Get (j)));
          Ptr<EpcTft> tft = Create<EpcTft> ();
          EpcTft::PacketFilter ulpf;
          ulpf.remotePortStart = ulPort;
          ulpf.remotePortEnd = ulPort;
          ulpf.direction = EpcTft::UPLINK;
          tft->Add (ulpf);

          EpsBearer bearer (EpsBearer::NGBR_LOW_LAT_EMBB);
          //nrHelper->ActivateDedicatedEpsBearer (remoteHost->GetDevice (0), bearer, tft);
        }

      serverAppsUl.Start (udpAppStartTimeUl);
      clientAppsUl.Start (udpAppStartTimeUl);
      serverAppsUl.Stop (udpAppStopTimeUl);
      clientAppsUl.Stop (udpAppStopTimeUl);
    }


  if (m_isDownlink)
    {
      UdpServerHelper dlPacketSinkHelper (dlPort);
      serverAppsDl.Add (dlPacketSinkHelper.Install (ueContainer));

      UdpClientHelper dlClient;
	  dlClient.SetAttribute ("RemotePort", UintegerValue (dlPort));
      dlClient.SetAttribute ("MaxPackets", UintegerValue (0xFFFFFFFF));
      dlClient.SetAttribute ("PacketSize", UintegerValue (udpPacketSize));
      dlClient.SetAttribute ("Interval", TimeValue (packetInterval));
      // configure here UDP traffic flows
      for (uint32_t j = 0; j < ueContainer.GetN (); ++j)
        {
          dlClient.SetAttribute ("RemoteAddress", AddressValue (ueIpIface.GetAddress (j)));
          clientAppsDl.Add (dlClient.Install (remoteHost));

          Ptr<EpcTft> tft = Create<EpcTft> ();
          EpcTft::PacketFilter dlpf;
          dlpf.localPortStart = dlPort;
          dlpf.localPortEnd = dlPort;
          dlpf.direction = EpcTft::DOWNLINK;
          tft->Add (dlpf);

          EpsBearer bearer (EpsBearer::NGBR_LOW_LAT_EMBB);
		  
          nrHelper->ActivateDedicatedEpsBearer (ueNetDev.Get (j), bearer, tft);
        }
      // start UDP server and client apps
      serverAppsDl.Start (udpAppStartTimeDl);
      clientAppsDl.Start (udpAppStartTimeDl);
      serverAppsDl.Stop (udpAppStopTimeDl);
      clientAppsDl.Stop (udpAppStopTimeDl);
    }



  Simulator::Stop (simTime);
  Simulator::Run ();

  if (verbose)
    {
      std::cerr << "Executing test for numerology " << m_numerology << std::endl;
    }
  
  Simulator::Destroy ();
}


class NrTimingsNewTestSuite : public TestSuite
{
public:
  NrTimingsNewTestSuite ();
};

NrTimingsNewTestSuite::NrTimingsNewTestSuite ()
  : TestSuite ("nr-test-timings-new", SYSTEM)
{

  AddTestCase (new NrTimingsNewTest ("num=1", 1, false), TestCase::QUICK);
}

// Do not forget to allocate an instance of this TestSuite
static NrTimingsNewTestSuite nrTimingsNewTestSuite;

