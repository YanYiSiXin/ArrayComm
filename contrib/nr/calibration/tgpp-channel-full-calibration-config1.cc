#include "iostream"
#include "cmath"
#include "ns3/double.h"
#include "ns3/uinteger.h"
#include "ns3/string.h"
#include "ns3/angles.h"
#include "ns3/pointer.h"
#include "ns3/node-container.h"
#include "ns3/constant-position-mobility-model.h"
#include "ns3/uniform-planar-array.h"
#include "ns3/isotropic-antenna-model.h"
#include "ns3/core-module.h"
#include "ns3/network-module.h"
#include "ns3/mobility-module.h"
#include "ns3/nr-module.h"
#include "ns3/antenna-module.h"
#include "ns3/nr-spectrum-value-helper.h"
#include "ns3/vector.h"
/**
 * \ingroup 3gpp-channel-full-calibration-config1
 *
 */
using namespace ns3;

NS_LOG_COMPONENT_DEFINE ("FullConfig1");

int
main (int argc, char *argv[])
{
    // Scenario parameters 
    uint16_t gNbNum = 12;
    uint16_t sectors = 3;
  
    // Adjustable parameters. We will take the input from the command line
    uint16_t ueNum = 2000;
    int16_t centralFrequencyBand_ghz = 70;

    // CommandLine input
    CommandLine cmd;
    cmd.AddValue ("ueNum", "Ue numbers", ueNum);
    cmd.AddValue ("centralFrequencyBand_ghz", "Central frequency band (Ghz)", centralFrequencyBand_ghz);

    // Parse the command line
    cmd.Parse (argc, argv);
    double centralFrequencyBand = centralFrequencyBand_ghz * 1e9;

    // Where we will store the output files.
    std::ofstream outFile_link;
    std::ofstream outFile_CoulpingLoss;
    std::ofstream outFile_geometry;
    std::ofstream outFile_spread;
    std::string outFile_linkName = "./scratch/calibration/full-config1/link" + std::to_string(centralFrequencyBand_ghz) + "Ghz";
    std::string outFile_CoulpingLossName = "./scratch/calibration/full-config1/couplingloss" + std::to_string(centralFrequencyBand_ghz) + "Ghz";
    std::string outFile_geometryName = "./scratch/calibration/full-config1/geometry" + std::to_string(centralFrequencyBand_ghz) + "Ghz";
    std::string outFile_spreadName = "./scratch/calibration/full-config1/spread" + std::to_string(centralFrequencyBand_ghz) + "Ghz";

    /*
    outFile_link.open (outFile_linkName.c_str());
    outFile_link.setf (std::ios_base::fixed);
    if (!outFile_link.is_open())
    {
        NS_ABORT_MSG ("Cannot open file" << outFile_linkName);
    }
    */
  
    outFile_CoulpingLoss.open (outFile_CoulpingLossName.c_str());
    outFile_CoulpingLoss.setf (std::ios_base::fixed);
    if (!outFile_CoulpingLoss.is_open())
    {
        NS_ABORT_MSG ("Cannot open file" << outFile_CoulpingLossName);
    }
  

    outFile_geometry.open (outFile_geometryName.c_str());
    outFile_geometry.setf (std::ios_base::fixed);
    if (!outFile_geometry.is_open())
    {
        NS_ABORT_MSG ("Cannot open file" << outFile_geometryName);
    }

  
    outFile_spread.open (outFile_spreadName.c_str());
    outFile_spread.setf (std::ios_base::fixed);
    if (!outFile_spread.is_open())
    {
        NS_ABORT_MSG ("Cannot open file" << outFile_spreadName);
    }
  
  
    //outFile_link << "Gnb" << "\t" << "Sector" << "\t" << "Port" << "\t" << "Ue" << "\t" << "Large_scale_loss_dB" << "\t" << "Rx1_dBm" <<"\t"<< "Rx2_dBm" << "\t"<< "Rx1_dB" << "\t" << "Rx2_dB" << std::endl; 
    //outFile_CoulpingLoss << "Ue" << "\t" << "CouplingLoss" << std::endl;
    //outFile_geometry << "Ue" << "\t" << "Geometry" << "\t" << "GeometryWithNoise" << std::endl;
    //outFile_spread << "Ue" << "\t" << "RayPower" << "\t" << "RayAoaAngle" << "\t" << "RayAodAngle"<< "\t" << "RayZoaAngle"<< "\t" << "RayZodAngle"<< std::endl;
  
    double Bandwidth = 100e6;//20Mhz for 6Ghz,100Mhz for 30Ghz and 70Ghz
    if (centralFrequencyBand_ghz == 6)
    {
        Bandwidth = 20e6;
    }

    // create base stations and mobile terminals
    NodeContainer gNbNodes;
    NodeContainer ueNodes;
    MobilityHelper gNbmobility;
    MobilityHelper uemobility;

    gNbNodes.Create (gNbNum);
    ueNodes.Create (ueNum);

    // Creating positions of the gNB according to the 3gpp TR 38.901 Figure 7.2.-1
    Ptr<ListPositionAllocator> gNbPositionAlloc = CreateObject<ListPositionAllocator> ();
	
    double gNbHeight = 3;
	
    for (uint8_t j = 0; j < 2; j++)
    {
        for (uint8_t i = 0; i < 6; i++)
        {
            gNbPositionAlloc->Add (Vector ( i * 20, j * 20, gNbHeight));
        }
    }

    gNbmobility.SetMobilityModel ("ns3::ConstantPositionMobilityModel");
    gNbmobility.SetPositionAllocator (gNbPositionAlloc);
    gNbmobility.Install (gNbNodes);

    double minBigBoxX = -10.0;
    double minBigBoxY = -15.0;
    double maxBigBoxX = 110.0;
    double maxBigBoxY =  35.0;
    double ueHeight = 1.0;
    // Creating positions of the UEs according to the 3gpp TR 38.901 uniformly randombly distributed in the rectangular area

    Ptr<RandomBoxPositionAllocator> ueRandomRectPosAlloc = CreateObject<RandomBoxPositionAllocator> ();
    Ptr<UniformRandomVariable> ueRandomVarX = CreateObject<UniformRandomVariable> ();
    ueRandomVarX->SetAttribute ("Min", DoubleValue (minBigBoxX));
    ueRandomVarX->SetAttribute ("Max", DoubleValue (maxBigBoxX));
    ueRandomRectPosAlloc->SetX (ueRandomVarX);
    Ptr<UniformRandomVariable> ueRandomVarY = CreateObject<UniformRandomVariable> ();
    ueRandomVarY->SetAttribute ("Min", DoubleValue (minBigBoxY));
    ueRandomVarY->SetAttribute ("Max", DoubleValue (maxBigBoxY));
    ueRandomRectPosAlloc->SetY (ueRandomVarY);
    Ptr<ConstantRandomVariable> ueRandomVarZ = CreateObject<ConstantRandomVariable> ();
    ueRandomVarZ->SetAttribute ("Constant", DoubleValue (ueHeight));
    ueRandomRectPosAlloc->SetZ (ueRandomVarZ);

    uemobility.SetPositionAllocator (ueRandomRectPosAlloc);
    uemobility.Install (ueNodes);

    double ue_polSlantAngle1 = (0.0 * M_PI) / 180.0; // converting to radians
    double ue_polSlantAngle2 = (90.0 * M_PI) / 180.0;
    double gnb_config1_polSlantAngle1 = (45.0 * M_PI) / 180.0;
    double gnb_config1_polSlantAngle2 = (-45.0 * M_PI) / 180.0;  
    //gnb config2 slant polarization default, not need to set
  
    // create the tx and rx antennas and set the their dimensions
    Ptr<AntennaModel> isotropic = CreateObject<IsotropicAntennaModel> ();
    Ptr<AntennaModel> tgpp = CreateObject<ThreeGppAntennaModel> ();
	
    std::vector<std::vector<double>> large_scale_loss_dB;
    large_scale_loss_dB.resize (ueNum);
    for (uint64_t uIndex = 0; uIndex < ueNum; uIndex++)
    {
        large_scale_loss_dB[uIndex].resize (gNbNum);
    }
		
    Ptr<ThreeGppIndoorOfficePropagationLossModel> PropagationLossModel = CreateObject<ThreeGppIndoorOfficePropagationLossModel> ();
    PropagationLossModel->SetAttribute ("Frequency", DoubleValue (centralFrequencyBand));
	  
    for (uint32_t n = 0; n < ueNodes.GetN (); n++)
    {
        for (uint32_t j = 0; j < gNbNodes.GetN (); j++)
        {
            large_scale_loss_dB[n][j] = PropagationLossModel->CalcRxPower (0, gNbNodes.Get (j)->GetObject<MobilityModel> (), ueNodes.Get (n)->GetObject<MobilityModel> ());
        }
    }
  
    // create the ChannelConditionModel object to be used to retrieve the channel condition
    Ptr<ChannelConditionModel> condModel = CreateObject<ThreeGppIndoorOpenOfficeChannelConditionModel> ();	
    Ptr<ThreeGppSpectrumPropagationLossModel> lossModel = CreateObject<ThreeGppSpectrumPropagationLossModel> ();
    lossModel->SetChannelModelAttribute ("Frequency", DoubleValue(centralFrequencyBand));
    lossModel->SetChannelModelAttribute ("Scenario", StringValue("InH-OfficeOpen"));
    lossModel->SetChannelModelAttribute ("ChannelConditionModel", PointerValue (condModel));  // create the ThreeGppChannelModel object used to generate the channel matrix
    lossModel->SetChannelModelAttribute ("use38900table", BooleanValue (true));
  
    // create propagation band
    double m_subcarrierSpacing = 15000; //delta f = 1.5khz
    uint8_t SUBCARRIERS_PER_RB = 12; //!< subcarriers per resource block
    double m_rbOh = 0.04;                    //!< Overhead for the RB calculation
    uint32_t numRbs;
    double realBw = Bandwidth * (1 - m_rbOh);
    uint32_t rbWidth = m_subcarrierSpacing * SUBCARRIERS_PER_RB;
    numRbs = static_cast<uint32_t> (realBw / rbWidth);	
    Ptr<const SpectrumModel> sm =  NrSpectrumValueHelper::GetSpectrumModel (numRbs, centralFrequencyBand, m_subcarrierSpacing);

    std::vector<int> activeRbs;
    double txPower = 24;//24dbm = 250mw
    Ptr<SpectrumValue> txPsd;

    // fill in all RBs
    for (size_t rbId = 0; rbId < sm->GetNumBands (); rbId++)
    {
        activeRbs.push_back (rbId);
    }
    txPsd = NrSpectrumValueHelper::CreateTxPowerSpectralDensity  (txPower, activeRbs, sm, NrSpectrumValueHelper::UNIFORM_POWER_ALLOCATION_BW);

    // x uniform random number [0.0, 360.0]
    double min = 0.0;
    double max = 360.0;
    Ptr<UniformRandomVariable> x = CreateObject<UniformRandomVariable> ();
    x->SetAttribute ("Min", DoubleValue (min));
    x->SetAttribute ("Max", DoubleValue (max));	
    double v = 3000.0 / 3600.0; //m/s speed 3km/h horizontal plane only
    UniformPlanarArray::ComplexVector antennaWeights;
    antennaWeights.push_back (exp (std::complex<double> (0, 0)));
  
    std::vector< Ptr<const MobilityModel>> tx_rxMobility;
    for (uint32_t n = 0; n < ueNodes.GetN (); n++)
    {
        double ue_alpha = x->GetValue () - 180.0;	  
	
        Ptr<UniformPlanarArray> ueUPA_1; // element 0 degree polarization
        ueUPA_1 = CreateObject<UniformPlanarArray> ();
        ueUPA_1->SetAttribute ("AntennaElement", PointerValue (isotropic));
        ueUPA_1->SetAttribute ("NumRows", UintegerValue (1));
        ueUPA_1->SetAttribute ("NumColumns", UintegerValue (1));
        ueUPA_1->SetAttribute ("DowntiltAngle", DoubleValue (DegreesToRadians (90.0)));
        ueUPA_1->SetAttribute ("BearingAngle", DoubleValue (DegreesToRadians (ue_alpha)));  
        ueUPA_1->SetAttribute ("PolSlantAngle", DoubleValue (ue_polSlantAngle1));
        Ptr<const PhasedArrayModel> rxPhasedArrayModel1 = DynamicCast<PhasedArrayModel> (ueUPA_1);
        ueUPA_1->SetBeamformingVector (antennaWeights);
	  
        Ptr<UniformPlanarArray> ueUPA_2; // element 90 degree polarization
        ueUPA_2 = CreateObject<UniformPlanarArray> ();
        ueUPA_2->SetAttribute ("AntennaElement", PointerValue (isotropic));
        ueUPA_2->SetAttribute ("NumRows", UintegerValue (1));
        ueUPA_2->SetAttribute ("NumColumns", UintegerValue (1));
        ueUPA_2->SetAttribute ("DowntiltAngle", DoubleValue (DegreesToRadians (90.0)));
        ueUPA_2->SetAttribute ("BearingAngle", DoubleValue (DegreesToRadians (ue_alpha)));  
        ueUPA_2->SetAttribute ("PolSlantAngle", DoubleValue (ue_polSlantAngle2));
        Ptr<const PhasedArrayModel> rxPhasedArrayModel2 = DynamicCast<PhasedArrayModel> (ueUPA_2);
        ueUPA_2->SetBeamformingVector (antennaWeights);
	
        double cl_n_linear_max = 0.0;
        double cl_n_linear_sum = 0.0;
        //Ptr<ThreeGppChannelModel::ThreeGppChannelParams> link_channelParams;
        Ptr<const MobilityModel> tmp_rxMobility;
        Ptr<const MobilityModel> rxMobility = ueNodes.Get (n)->GetObject<MobilityModel> ();
        for (uint32_t j = 0; j < gNbNodes.GetN (); j++)
        {
            Ptr<SpectrumValue> txPsd_tmp = Copy<SpectrumValue> (txPsd);
            double pathGainLinear = std::pow (10.0, (large_scale_loss_dB[n][j]) / 10.0);
            *(txPsd_tmp) *= pathGainLinear;
	  
            Ptr<const MobilityModel> txMobility = gNbNodes.Get (j)->GetObject<MobilityModel> ();

            double bearAngle[3] = {-90.0, 30.0, 150.0};
            for (uint32_t k = 0; k < sectors; k++)
            { 
                double cl_njk_linear = 0.0;
                for (uint32_t port = 0; port < 4; port++)
                {
                    Ptr<UniformPlanarArray> gnbUPA;//gnb 4 ports(4 elements)
                    gnbUPA = CreateObject<UniformPlanarArray> ();
                    gnbUPA->SetAttribute ("AntennaElement", PointerValue (tgpp));//default 4x4
                    gnbUPA->SetAttribute ("Yoffset", DoubleValue ((port % 2) * 2.5));
                    gnbUPA->SetAttribute ("BearingAngle", DoubleValue (DegreesToRadians (bearAngle[k])));

                    if (port < 2)
                    {
                        gnbUPA->SetAttribute ("PolSlantAngle", DoubleValue (gnb_config1_polSlantAngle1));  
                    }
                    else
                    {
                        gnbUPA->SetAttribute ("PolSlantAngle", DoubleValue (gnb_config1_polSlantAngle2));
                    }

                    Ptr<const PhasedArrayModel> txPhasedArrayModel = DynamicCast<PhasedArrayModel> (gnbUPA);

                    UniformPlanarArray::ComplexVector steeringVector;
                    steeringVector.resize (gnbUPA->GetNumberOfElements ());
                    for (uint64_t i = 0; i < gnbUPA->GetNumberOfElements (); i++)
                    {
                        Vector loc = gnbUPA->GetElementLocation (i);
                        double phase = -2 * M_PI * (sin (DegreesToRadians (110)) * cos (DegreesToRadians (bearAngle[k])) * loc.x +
                                  sin (DegreesToRadians (110)) * sin (DegreesToRadians (bearAngle[k])) * loc.y +
                                  cos (DegreesToRadians (110)) * loc.z);
                        //std::cout << loc.x << " " << loc.y << " " << loc.z << " " << phase << std::endl;
                        steeringVector[i] = std::polar<double> (1.0, phase)/std::sqrt(16);
                    }
                    gnbUPA->SetBeamformingVector (steeringVector);		  		  		  

                    Ptr<const MatrixBasedChannelModel::ChannelMatrix> channelMatrix_rx1 = lossModel->GetChannelModel()->GetChannel (txMobility, rxMobility, txPhasedArrayModel, rxPhasedArrayModel1);
                    Ptr<const MatrixBasedChannelModel::ChannelMatrix> channelMatrix_rx2 = lossModel->GetChannelModel()->GetChannel (txMobility, rxMobility, txPhasedArrayModel, rxPhasedArrayModel2);
                    Ptr<const MatrixBasedChannelModel::ChannelParams> channelParams = lossModel->GetChannelModel()->GetParams (txMobility, rxMobility);

                    PhasedArrayModel::ComplexVector longTerm_rx1 = lossModel->GetLongTerm (channelMatrix_rx1, txPhasedArrayModel, rxPhasedArrayModel1);
                    PhasedArrayModel::ComplexVector longTerm_rx2 = lossModel->GetLongTerm (channelMatrix_rx2, txPhasedArrayModel, rxPhasedArrayModel2);
                    std::vector< std::complex<double> > H_port_f;
                    // apply the beamforming gain
                    Ptr<SpectrumValue> rx1Psd = lossModel->CalcBeamformingGain (txPsd_tmp, longTerm_rx1, channelMatrix_rx1, channelParams, Vector (0.0, 0.0, 0.0), Vector (v * cos(ue_alpha), v * sin(ue_alpha), 0.0), H_port_f);
                    Ptr<SpectrumValue> rx2Psd = lossModel->CalcBeamformingGain (txPsd_tmp, longTerm_rx2, channelMatrix_rx2, channelParams, Vector (0.0, 0.0, 0.0), Vector (v * cos(ue_alpha), v * sin(ue_alpha), 0.0), H_port_f);
                    double rx1Power_dBm = 10 * log10 (Integral (*rx1Psd) * 1000);
                    double rx2Power_dBm = 10 * log10 (Integral (*rx2Psd) * 1000);
                    double delta_Power_1_dB = rx1Power_dBm - txPower;
                    double delta_Power_2_dB = rx2Power_dBm - txPower;
                    //outFile_link << j << "\t" << k << "\t" << port << "\t" << n << "\t" << large_scale_loss_dB[n][j] << "\t" << rx1Power_dBm <<"\t"<<rx2Power_dBm <<"\t" << delta_Power_1_dB << "\t" << delta_Power_2_dB<< std::endl; 

                    //calc coupling loss
                    double delta_Power_1_linear = pow(10, delta_Power_1_dB / 10.0);
                    double delta_Power_2_linear = pow(10, delta_Power_2_dB / 10.0);
                    cl_njk_linear = cl_njk_linear + delta_Power_1_linear +delta_Power_2_linear;	

                }

                cl_njk_linear = cl_njk_linear / 8;
                cl_n_linear_sum += cl_njk_linear;
                if (cl_njk_linear > cl_n_linear_max)
                {
                    cl_n_linear_max = cl_njk_linear;
                    //link_channelParams = link_channelParams_tmp;
                tmp_rxMobility = txMobility;
            }
        }
    }
    outFile_CoulpingLoss << n << "\t" << 10 * log10(cl_n_linear_max) << std::endl;
    outFile_geometry << n << "\t" << 10 * log10(cl_n_linear_max/(cl_n_linear_sum - cl_n_linear_max)) << std::endl;
    tx_rxMobility.push_back (tmp_rxMobility);
    }
  
    for (uint16_t tt = 0; tt < 1; tt++)
    {
        for (uint32_t n = 0; n < ueNodes.GetN (); n++)
        {
            Ptr<const MobilityModel> rxMobility = ueNodes.Get (n)->GetObject<MobilityModel> ();
            Ptr<ThreeGppChannelModel::ThreeGppChannelParams> link_channelParams = (DynamicCast<ThreeGppChannelModel>(lossModel->GetChannelModel()))->m_GetParams (tx_rxMobility[n], rxMobility);
            //outFile_spread << n <<" " << tt << " "<< link_channelParams->m_ASA <<" " << link_channelParams->m_ASD << " " << link_channelParams->m_ZSA << " "<< link_channelParams->m_ZSD << " " << link_channelParams->m_DS <<std::endl;
            for (uint16_t nn = 0; nn < link_channelParams->m_clusterPower.size(); nn++)
            {
                //outFile_spread << n <<" " << tt << " " << link_channelParams->clusterPowerForAngles[nn]<< " " << link_channelParams->m_rawAngle[0][nn]* M_PI /180 <<" " << link_channelParams->m_rawAngle[2][nn]* M_PI /180 <<" " << link_channelParams->m_rawAngle[1][nn]* M_PI /180 <<" " << link_channelParams->m_rawAngle[3][nn]* M_PI /180 << " " << link_channelParams->m_delay[nn] * 1e9 << std::endl ;
                uint16_t ray_num = link_channelParams->m_rayAodRadian[nn].size();
                for (uint16_t mm = 0; mm < link_channelParams->m_rayAodRadian[nn].size(); mm++)
                {
                    outFile_spread << n <<" " << tt << " " << link_channelParams->clusterPowerForAngles[nn]/ray_num << " " << link_channelParams->m_rayAoaRadian[nn][mm] <<" " << link_channelParams->m_rayAodRadian[nn][mm] <<" " << link_channelParams->m_rayZoaRadian[nn][mm] <<" " << link_channelParams->m_rayZodRadian[nn][mm] << " " << link_channelParams->m_delay[nn] * 1e9 << std::endl ;
                }
            }
        }
    }
  
    //outFile_link.close();
    outFile_CoulpingLoss.close();
    outFile_geometry.close();
    outFile_spread.close();
  
    return 0;

}
