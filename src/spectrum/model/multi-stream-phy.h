/* -*- Mode:C++; c-file-style:"gnu"; indent-tabs-mode:nil; -*- */
/*
 * Copyright (c) 2009 CTTC
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation;
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 * Author: Nicola Baldo <nbaldo@cttc.es>
 */

#ifndef MULTI_STREAM_PHY_H
#define MULTI_STREAM_PHY_H

#include <ns3/object.h>
#include <ns3/nstime.h>
#include <ns3/spectrum-value.h>
#include <ns3/spectrum-converter.h>
#include <ns3/spectrum-channel.h>
#include <ns3/spectrum-propagation-loss-model.h>

namespace ns3 {

typedef std::vector< std::complex<double> > complexVector_t; //!<zhongwei: type definition for complex vectors
typedef std::vector<complexVector_t> complex2DVector_t; //!<zhongwei: type definition for complex matrices
typedef std::vector<complex2DVector_t> complex3DVector_t; //!<zhongwei: type definition for 3D complex matrices

class MultiStreamPhy : public Object
{

public:
  MultiStreamPhy ();
  virtual ~MultiStreamPhy ();
  /** lzyou:
   * \brief Get the TypeId of the Object
   * \return the TypeId of the Object
   */
  static TypeId GetTypeId (void);
  /** zhongwei:
   * \brief Get the vector of the spectrum phy instances of this MultiStreamPhy
   * \return the vector to the (owned) spectrum phy instances
   */
  std::vector<Ptr<SpectrumPhy>> GetSpectrumPhys();
  /** zhongwei:
   * \Used by this channel's attached PHY devices to receive signals
   * \param [in] m_txParams The parameters of the signals being transmitted
   * \param [in] gnbPhy The MultiStreamPhy instance
   * \param [in] total_G The total complex channel matrix being generated corresponding to each port-pairs
   * \param [in] precodingmatrix The precoding matrix being generated in GNB
   */
  virtual void StartMultiRx(std::vector<Ptr<SpectrumSignalParameters>> m_txParams, Ptr<MultiStreamPhy> gnbPhy, complex3DVector_t total_G, complex2DVector_t precodingmatrix) = 0;
  
  
protected:
  std::vector<Ptr<SpectrumPhy>> base_spectrumPhys; //!<zhongwei: vector to the (owned) spectrum phy instances
};

}  // namespace ns3

#endif  /* MULTI_STREAM_PHY_H */