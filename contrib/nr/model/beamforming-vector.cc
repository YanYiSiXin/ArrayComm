/* -*-  Mode: C++; c-file-style: "gnu"; indent-tabs-mode:nil; -*- */
/*
 *   Copyright (c) 2020 Centre Tecnologic de Telecomunicacions de Catalunya (CTTC)
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

#include "beamforming-vector.h"

#include <ns3/angles.h>
#include <ns3/log.h>
#include <ns3/uinteger.h>

namespace ns3
{

complexVector_t
CreateQuasiOmniBfv(uint32_t antennaRows, uint32_t antennaColumns)
{
    complexVector_t omni;
    uint32_t size = antennaRows * antennaColumns;
    double power = 1 / sqrt(size);
    for (uint32_t ind = 0; ind < antennaRows; ind++)
    {
        std::complex<double> c = 0.0;
        if (antennaRows % 2 == 0)
        {
            c = exp(std::complex<double>(0, M_PI * ind * ind / antennaRows));
        }
        else
        {
            c = exp(std::complex<double>(0, M_PI * ind * (ind + 1) / antennaRows));
        }

        for (uint32_t ind2 = 0; ind2 < antennaColumns; ind2++)
        {
            std::complex<double> d = 0.0;
            if (antennaColumns % 2 == 0)
            {
                d = exp(std::complex<double>(0, M_PI * ind2 * ind2 / antennaColumns));
            }
            else
            {
                d = exp(std::complex<double>(0, M_PI * ind2 * (ind2 + 1) / antennaColumns));
            }

            omni.push_back(c * d * power);
        }
    }
    return omni;
}

complexVector_t
CreateDirectionalBfv(const Ptr<const UniformPlanarArray>& antenna,
                     uint16_t sector,
                     double elevation)
{
    complexVector_t tempVector;

    UintegerValue uintValueNumRows;
    antenna->GetAttribute("NumRows", uintValueNumRows);

    double hAngle_radian =
        M_PI * (static_cast<double>(sector) / static_cast<double>(uintValueNumRows.Get())) -
        0.5 * M_PI;
    double vAngle_radian = elevation * M_PI / 180;
    uint16_t size = antenna->GetNumberOfElements();
    double power = 1 / sqrt(size);
    if (size == 1)
    {
        tempVector.push_back(power); // single AE, no BF
    }
    else
    {
        for (auto ind = 0; ind < size; ind++)
        {
            Vector loc = antenna->GetElementLocation(ind);
            double phase =
                -2 * M_PI *
                (sin(vAngle_radian) * cos(hAngle_radian) * loc.x +
                 sin(vAngle_radian) * sin(hAngle_radian) * loc.y + cos(vAngle_radian) * loc.z);
            tempVector.push_back(exp(std::complex<double>(0, phase)) * power);
        }
    }
    return tempVector;
}

// //xinping: Antenna_Array split
// complexVector_t
// CreateDirectionalBfvTest(const Ptr<const UniformPlanarArray>& antenna,
//                      uint16_t sector,
//                      double elevation,
//                      uint8_t uernti)
// {
//     UintegerValue uintValueNumRows;
//     UintegerValue uintValueNumColumns;
//     antenna->GetAttribute("NumRows", uintValueNumRows);
//     antenna->GetAttribute("NumColumns",uintValueNumColumns);
//     uint32_t NumRows = static_cast<uint32_t>(uintValueNumRows.Get());
//     uint32_t NumColums = static_cast<uint32_t>(uintValueNumColumns.Get());
//     double hAngle_radian =
//         M_PI * (static_cast<double>(sector) / static_cast<double>(uintValueNumRows.Get())) -0.5 * M_PI;
//     double vAngle_radian = elevation * M_PI / 180;
//     uint16_t size = antenna->GetNumberOfElements();
//     double power = 1 / sqrt(size/2);
//     int LeftAntennaIndex[size/2];
//     int RightAntennaIndex[size/2];
//     uint32_t MinSubIndex = size/4;
//     for (uint32_t i = 0; i < NumRows; i++)//获取左面板天线索引
//     {
//         for (uint32_t j = 0; j < NumColums/2; j++)
//         {
//             for (uint8_t m = 0; m < size/2; m++)
//             {
//                 LeftAntennaIndex[m]=i*NumColums+j;
//             }
//         }  
//     }
//     for (uint32_t Ri = 0; Ri < NumRows; Ri++)//获取右面板天线索引
//     {
//         for (uint32_t Rj = NumColums/2; Rj < NumColums ; Rj++)
//         {
//             for (uint8_t Rm = 0; Rm < size/2; Rm++)
//             {
//                 RightAntennaIndex[Rm]=Ri*NumColums+Rj;
//             }
//         }  
//     }
//     complexVector_t tempVector;
//     if (size == 1)
//     {
//         tempVector.push_back(power); // single AE, no BF
//     }
//     else
//     {
//         if (uernti == 1)//设置左面板天线相位
//         {
//             for (auto ind1 = 0; ind1 < size/2; ind1++)
//             {
//                 uint8_t Positionind = LeftAntennaIndex[ind1];
//                 Vector loc = antenna->GetElementLocation(Positionind);
//                 double phase =
//                     -2 * M_PI *
//                     (sin(vAngle_radian) * cos(hAngle_radian) * loc.x +
//                     sin(vAngle_radian) * sin(hAngle_radian) * loc.y + cos(vAngle_radian) * loc.z);
//                 tempVector.push_back(exp(std::complex<double>(0, phase)) * power);
//             }
//         }
//         else
//         {
//                 //设置左面板天线相位
//             for (auto ind2 = 0; ind2 < size/2; ind2++)
//             {
//                 uint8_t Positionind = RightAntennaIndex[ind2];
//                 Vector loc = antenna->GetElementLocation(Positionind);
//                 double phase =
//                     -2 * M_PI *
//                     (sin(vAngle_radian) * cos(hAngle_radian) * loc.x +
//                     sin(vAngle_radian) * sin(hAngle_radian) * loc.y + cos(vAngle_radian) * loc.z);
//                 tempVector.push_back(exp(std::complex<double>(0, phase)) * power);
//             }
//         }
//     }
//     return tempVector;
// }

complexVector_t
CreateDirectionalBfvAz(const Ptr<const UniformPlanarArray>& antenna, double azimuth, double zenith)
{
    complexVector_t tempVector;

    UintegerValue uintValueNumRows;
    antenna->GetAttribute("NumRows", uintValueNumRows);

    double hAngle_radian = azimuth * M_PI / 180;
    double vAngle_radian = zenith * M_PI / 180;
    uint16_t size = antenna->GetNumberOfElements();
    double power = 1 / sqrt(size);
    if (size == 1)
    {
        tempVector.push_back(power); // single AE, no BF
    }
    else
    {
        for (auto ind = 0; ind < size; ind++)
        {
            Vector loc = antenna->GetElementLocation(ind);
            double phase =
                -2 * M_PI *
                (sin(vAngle_radian) * cos(hAngle_radian) * loc.x +
                 sin(vAngle_radian) * sin(hAngle_radian) * loc.y + cos(vAngle_radian) * loc.z);
            tempVector.push_back(exp(std::complex<double>(0, phase)) * power);
        }
    }
    return tempVector;
}

complexVector_t
CreateDirectPathBfv(const Ptr<MobilityModel>& a,
                    const Ptr<MobilityModel>& b,
                    const Ptr<const UniformPlanarArray>& antenna)
{
    complexVector_t antennaWeights;

    // retrieve the position of the two devices
    Vector aPos = a->GetPosition();
    Vector bPos = b->GetPosition();

    // compute the azimuth and the elevation angles
    Angles completeAngle(bPos, aPos);

    double hAngleRadian = completeAngle.GetAzimuth();

    double vAngleRadian = completeAngle.GetInclination(); // the elevation angle

    // retrieve the number of antenna elements
    int totNoArrayElements = antenna->GetNumberOfElements();

    // the total power is divided equally among the antenna elements
    double power = 1 / sqrt(totNoArrayElements);

    // compute the antenna weights
    for (int ind = 0; ind < totNoArrayElements; ind++)
    {
        Vector loc = antenna->GetElementLocation(ind);
        double phase = -2 * M_PI *
                       (sin(vAngleRadian) * cos(hAngleRadian) * loc.x +
                        sin(vAngleRadian) * sin(hAngleRadian) * loc.y + cos(vAngleRadian) * loc.z);
        antennaWeights.push_back(exp(std::complex<double>(0, phase)) * power);
    }

    return antennaWeights;
}



//faoweijfoawijfoiawejofiejawoifejoawijfoawijfeaw

//pengpeng: get Path Bfv of each UE using different antenna Elements
complexVector_t
CreateDirectPathBfv(const Ptr<MobilityModel>& a,
                    const Ptr<MobilityModel>& b,
                    const Ptr<const UniformPlanarArray>& antenna,
                    int uernti)
{
    complexVector_t antennaWeights;

    // retrieve the position of the two devices
    Vector aPos = a->GetPosition();
    Vector bPos = b->GetPosition();

    // compute the azimuth and the elevation angles
    Angles completeAngle(bPos, aPos);

    double hAngleRadian = completeAngle.GetAzimuth();

    double vAngleRadian = completeAngle.GetInclination(); // the elevation angle

    // retrieve the number of antenna elements
    int totNoArrayElements = antenna->GetNumberOfElements();

    // pengpeng: divide equally antenna elements to every user (default to 4 in the testing 4x4 mimo scheme)
    int ElementsPerUser = totNoArrayElements / 2;

    // pengpeng: the total power is divided equally among the antenna elements
    double power = 1 / sqrt(ElementsPerUser);

    // pengpeng: compute the antenna weights for UE1 && UE2
    for (int ind = 0; ind < ElementsPerUser; ind++)
    {
        //pengpeng: see the antenna topology for the location of antenna elements and how to index them
        Vector loc = antenna->GetElementLocation(ElementsPerUser*uernti + ind);
        double phase = -2 * M_PI *
                       (sin(vAngleRadian) * cos(hAngleRadian) * loc.x +
                        sin(vAngleRadian) * sin(hAngleRadian) * loc.y + cos(vAngleRadian) * loc.z);
        antennaWeights.push_back(exp(std::complex<double>(0, phase)) * power);
    }

    return antennaWeights;
}




} // namespace ns3
