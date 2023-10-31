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


/**
 * \ingroup 3gpp-channel-large-calibration
 *
 */
using namespace ns3;

NS_LOG_COMPONENT_DEFINE ("LargeScaleCalibration");

/*
 * calculate fixed pattern (fixed electrical downtilting angle) base station antenna array gain
 * input: array, array electrical angle, propagation angle
 * output: array gain = element gain + array factor
*/
double
ComputeGain_3GPP (Ptr<UniformPlanarArray> a, Angles m_direction, Angles antenna_direction)
{
    // compute gain
    PhasedArrayModel::ComplexVector w;
    w.resize (a->GetNumberOfElements ());
    for (uint64_t i = 0; i < a->GetNumberOfElements (); i++)
    {
        double phase = 2 * M_PI * (i) * 0.5 * (cos(m_direction.GetInclination ()) - cos(antenna_direction.GetInclination ()));
        w[i] = std::polar<double> (1.0, phase);
    }

    std::pair<double, double> fp = a->GetElementFieldPattern (m_direction);

    // scalar product dot (sv, bf)
    std::complex<double> prod {0};
    for (size_t i = 0; i < w.size (); i++)
    {
        prod += w[i] ;
    }
    double bfGain = std::pow (std::abs (prod), 2) / a->GetNumberOfElements ();
    double bfGainDb = 10 * std::log10 (bfGain);

    // power gain from two polarizations
    double elementPowerGain = std::pow (std::get<0> (fp), 2) + std::pow (std::get<1> (fp), 2);
    double elementPowerGainDb = 10 * std::log10 (elementPowerGain);

    // sum BF and element gains
    return bfGainDb + elementPowerGainDb;
}

int
main (int argc, char *argv[])
{
    // Scenario parameters 
    uint16_t gNbNum = 12;
    uint16_t sectors = 3;
  
    // Adjustable parameters. We will take the input from the command line
    uint16_t ueNum = 2000;
    int16_t centralFrequencyBand_ghz = 70;

    /*
    * From here, we instruct the ns3::CommandLine class of all the input parameters
    * that we may accept as input, as well as their description, and the storage
    * variable.
    */
    CommandLine cmd;
    cmd.AddValue ("ueNum", "Ue numbers", ueNum);
    cmd.AddValue ("centralFrequencyBand_ghz", "Central frequency band (Ghz)", centralFrequencyBand_ghz);

    // Parse the command line
    cmd.Parse (argc, argv);
    double centralFrequencyBand = centralFrequencyBand_ghz * 1e9;
  
    // Where we will store the output files.
    std::ofstream outFile_loslink;
    std::ofstream outFile_CoulpingLoss;
    std::string outFile_loslinkName = "./scratch/calibration/large/large_los_link" + std::to_string(centralFrequencyBand_ghz) + "Ghz";
    std::string outFile_CoulpingLossName = "./scratch/calibration/large/large_couplingloss" + std::to_string(centralFrequencyBand_ghz) + "Ghz";
    std::ofstream outFile_geometry;
    std::string outFile_geometryName = "./scratch/calibration/large/large_geometry" + std::to_string(centralFrequencyBand_ghz) + "Ghz";

    outFile_loslink.open (outFile_loslinkName.c_str());
    outFile_loslink.setf (std::ios_base::fixed);
    if (!outFile_loslink.is_open())
    {
        NS_ABORT_MSG ("Cannot open file" << outFile_loslinkName);
    }
  
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
  
    outFile_loslink << "gnb" << "\t" << "sector" << "\t" << "ue" << "\t" << "PropagationGain_dB" << "\t" << "TxAntennaGain_dB" << "\t" << "PathGain_dB" << std::endl;;
    outFile_CoulpingLoss << "ue" << "\t" << "CouplingLoss" << std::endl;
    outFile_geometry << "ue" << "\t" << "Geometry" << "\t" << "GeometryWithNoise" << std::endl;
  
    double noise_dbm = -174;
    double ptx_dbm = 24;
    double Bandwidth = 100e6;//20Mhz for 6Ghz,100Mhz for 30Ghz and 70Ghz
    if (centralFrequencyBand_ghz == 6)
    {
        Bandwidth = 20e6;
    }
    double n0 = std::pow(10.0, noise_dbm / 10) / 1000;
    double ptx = std::pow(10.0, ptx_dbm / 10) / 1000;
    double sigma2 = n0 * Bandwidth;
    double lou = sigma2 / ptx;

    // create base stations and terminals
    NodeContainer gNbNodes;
    NodeContainer ueNodes;
    MobilityHelper gNbmobility;
    MobilityHelper uemobility;

    gNbNodes.Create (gNbNum);
    ueNodes.Create (ueNum);

    // Create positions of the gNB according to the 3gpp TR 38.901 Figure 7.2.-1
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
    // Create positions of the UEs according to the 3gpp TR 38.901 and
    // uniformly randombly distributed in the rectangular area

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
    // generate in one time
    uemobility.Install (ueNodes);

    // create the tx and rx antennas and set the their dimensions
    Ptr<AntennaModel> isotropic = CreateObject<IsotropicAntennaModel> ();
    Ptr<AntennaModel> tgpp = CreateObject<ThreeGppAntennaModel> ();
	
    Ptr<UniformPlanarArray> gnbUPA[3];
    // three-sectors orientation, rotation about z-axis
    double bearingAngle[3] = {-90.0, 30.0, 150.0};
    for (uint32_t j = 0; j < sectors; j++)
    {  
        gnbUPA[j] = CreateObject<UniformPlanarArray> ();
        gnbUPA[j]->SetAttribute ("AntennaElement", PointerValue (tgpp));
        gnbUPA[j]->SetAttribute ("NumRows", UintegerValue (10));
        gnbUPA[j]->SetAttribute ("NumColumns", UintegerValue (1));
        //AntennaVerticalSpacing default 0.5lambda, as well as AntennaHorizontalSpacing
        gnbUPA[j]->SetAttribute ("BearingAngle", DoubleValue (DegreesToRadians (bearingAngle[j])));
    } // polarization slant angle default 0, stands for vertical polarization
	
    Ptr<UniformPlanarArray> ueUPA = CreateObject<UniformPlanarArray> ();
    ueUPA->SetAttribute ("AntennaElement", PointerValue (isotropic));
    ueUPA->SetAttribute ("NumRows", UintegerValue (1));
    ueUPA->SetAttribute ("NumColumns", UintegerValue (1));

    std::vector<double> CouplingLoss_dB (ueNum);

    // Create the propagation loss model
    Ptr<ThreeGppIndoorOfficePropagationLossModel> lossModel = CreateObject<ThreeGppIndoorOfficePropagationLossModel> ();
    //lossModel->SetAttribute ("ShadowingEnabled", BooleanValue (false)); // disable the shadow fading, default ture
    lossModel->SetAttribute ("Frequency", DoubleValue (centralFrequencyBand));

    for (uint32_t n = 0; n < ueNodes.GetN (); n++)
    {
        // temporary parameter
        double Cl_n_dB = -200;
        double PathGain = 0;
        for (uint32_t j = 0; j < gNbNodes.GetN (); j++)
        {	  
            double PropagationGain_dB = lossModel->CalcRxPower (0, gNbNodes.Get (j)->GetObject<MobilityModel> (), ueNodes.Get (n)->GetObject<MobilityModel> ());
            // PropagationGain_dB = Pathloss + shadowing, already negtive value
            Ptr<ChannelCondition> cond = lossModel->GetChannelConditionModel ()->GetChannelCondition (gNbNodes.Get (j)->GetObject<MobilityModel> (), ueNodes.Get (n)->GetObject<MobilityModel> ());
            if (cond->IsNlos ())
            {
                continue;// Nlos not consider to associate, so not to calc pathloss...
            }

            for (uint32_t m = 0; m < sectors; m++)
            {
                Angles txAngles (ueNodes.Get (n)->GetObject<MobilityModel> ()->GetPosition (), gNbNodes.Get (j)->GetObject<MobilityModel> ()->GetPosition ());
                // angle origin at second position variable
                double TxAntennaGain_dB = ComputeGain_3GPP (gnbUPA[m], txAngles, Angles (DegreesToRadians (-90 + m * 120), DegreesToRadians (110)));

                double PathGain_dB = TxAntennaGain_dB + PropagationGain_dB;
                PathGain += std::pow (10.0, PathGain_dB / 10.0);
                outFile_loslink << j << "\t" << m << "\t" << n << "\t" << PropagationGain_dB << "\t" << TxAntennaGain_dB << "\t" << PathGain_dB << std::endl;
                if (PathGain_dB > Cl_n_dB)
                {
                    Cl_n_dB = PathGain_dB;
                }
            }
        }
        CouplingLoss_dB.at(n) = Cl_n_dB;
        outFile_CoulpingLoss << n << "\t" << Cl_n_dB << std::endl;
	
        double Cl_n_linear = std::pow (10.0, Cl_n_dB / 10.0);
        outFile_geometry << n << "\t" << 10* log10 (Cl_n_linear/(PathGain - Cl_n_linear)) <<"\t" << 10* log10 (Cl_n_linear/(PathGain - Cl_n_linear + lou))<< std::endl;
    }
  
    outFile_loslink.close();
    outFile_CoulpingLoss.close();
    outFile_geometry.close();
	
    return 0;

}



