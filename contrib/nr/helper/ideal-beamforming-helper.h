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

#include "beamforming-helper-base.h"

#include "ns3/event-id.h"
#include <ns3/beamforming-vector.h>
#include <ns3/nstime.h>

#ifndef SRC_NR_HELPER_IDEAL_BEAMFORMING_HELPER_H_
#define SRC_NR_HELPER_IDEAL_BEAMFORMING_HELPER_H_

namespace ns3
{

class NrGnbNetDevice;
class NrUeNetDevice;
class IdealBeamformingAlgorithm;

/**
 * \ingroup helper
 * \brief The IdealBeamformingHelper class
 */
class IdealBeamformingHelper : public BeamformingHelperBase
{
  public:
    /**
     * \brief IdealBeamformingHelper
     */
    IdealBeamformingHelper();
    /**
     * \brief ~IdealBeamformingHelper
     */
    ~IdealBeamformingHelper() override;

    /**
     * \brief Get the Type ID
     * \return the TypeId of the instance
     */
    static TypeId GetTypeId();

    /**
     * \brief SetBeamformingMethod
     * \param beamformingMethod
     */
    void SetBeamformingMethod(const TypeId& beamformingMethod) override;

    /**
     * \brief SetIdealBeamformingPeriodicity
     * \param v
     */
    void SetPeriodicity(const Time& v);
    /**
     * \brief GetIdealBeamformingPeriodicity
     * \return
     */
    Time GetPeriodicity() const;

    /**
     * \brief Run beamforming task
     */
    virtual void Run() const;

    //pengpeng: antenna split
    /**
     * \brief Specify among which devices the beamforming algorithm should be
     * performed
     * \param gNbDev gNB device
     * \param ueDev UE device
     */
    void AddBeamformingTask(const Ptr<NrGnbNetDevice>& gNbDev,
                            const Ptr<NrUeNetDevice>& ueDev,
                            int index_ue);

    /**
     * \brief Specify among which devices the beamforming algorithm should be
     * performed
     * \param gNbDev gNB device
     * \param ueDev UE device
     */
    //pengpeng: disable to test
    void AddBeamformingTask(const Ptr<NrGnbNetDevice>& gNbDev,
                            const Ptr<NrUeNetDevice>& ueDev) override;


  protected:
    // inherited from Object
    void DoInitialize() override;

    /**
     * \brief The beamforming timer has expired; at the next slot, perform beamforming.
     *
     */
    virtual void ExpireBeamformingTimer();

    BeamformingVectorPair GetBeamformingVectors(
        const Ptr<NrSpectrumPhy>& gnbSpectrumPhy,
        const Ptr<NrSpectrumPhy>& ueSpectrumPhy) const override;

    //pengpeng: antenna split
    BeamformingVectorPair GetBeamformingVectors(
        const Ptr<NrSpectrumPhy>& gnbSpectrumPhy,
        const Ptr<NrSpectrumPhy>& ueSpectrumPhy,
        int index_ue);

    Time m_beamformingPeriodicity; //!< The beamforming periodicity or how frequently beamforming
                                   //!< tasks will be executed
    EventId m_beamformingTimer;    //!< Beamforming timer that is used to schedule periodical
                                   //!< beamforming vector updates
    Ptr<IdealBeamformingAlgorithm>
        m_beamformingAlgorithm; //!< The beamforming algorithm that will be used

    typedef std::pair<Ptr<NrSpectrumPhy>, Ptr<NrSpectrumPhy>> SpectrumPhyPair;
    typedef std::pair<Ptr<NrGnbNetDevice>, Ptr<NrUeNetDevice>>
        DevicePair; //!< The list of beamforming tasks to be executed

    std::map<SpectrumPhyPair, DevicePair> m_spectrumPhyPairToDevicePair;
};

}; // namespace ns3

#endif /* SRC_NR_HELPER_IDEAL_BEAMFORMING_HELPER_H_ */
