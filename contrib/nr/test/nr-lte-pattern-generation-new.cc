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
#include <ns3/test.h>
#include <ns3/object-factory.h>
#include <ns3/nr-gnb-phy.h>

/**
 * \file nr-lte-pattern-generation.cc
 * \ingroup test
 *
 * \brief The test considers the function NrGnbPhy::GenerateStructuresFromPattern
 * and checks that the output of that function is equal to the one pre-defined.
 * Test includes also the Harq feedback indication.
 */
namespace ns3 {

/**
 * \ingroup test
 * \brief TestSched testcase
 */
class LtePatternNewTestCase : public TestCase
{
public:

  /**
   * \brief The result in a single struct
   */
  struct Result
  {
    std::map<uint32_t, std::vector<uint32_t> > m_toSendDl;
    std::map<uint32_t, std::vector<uint32_t> > m_toSendUl;
    std::map<uint32_t, std::vector<uint32_t> > m_generateDl;
    std::map<uint32_t, std::vector<uint32_t> > m_generateUl;
    std::map<uint32_t, uint32_t> m_dlHarqFb;
  };


  /**
   * \brief The harqResult in a single struct
   */
  struct HarqResult
  {
    std::map<uint32_t, uint32_t> m_dlHarq;
  };

  /**
   * \brief Create LtePatternTestCase
   * \param name Name of the test
   */
  LtePatternNewTestCase (const std::string &name)
    : TestCase (name)
  {}

  /**
   * \brief Check if two maps are equal
   * \param a first map
   * \param b second map
   */
  void CheckMap (const std::map<uint32_t, std::vector<uint32_t> > &a,
                 const std::map<uint32_t, std::vector<uint32_t> > &b);

  /**
   * \brief Check if two maps of the Harq indication are equal
   * \param a first map
   * \param b second map
   */
  void CheckHarqMap (const std::map<uint32_t, uint32_t> &a,
                     const std::map<uint32_t, uint32_t> &b);

  /**
   * \brief Check if two vectors are equal
   * \param a first vector
   * \param b second vector
   */
  void CheckVector (const std::vector<uint32_t> &a,
                    const std::vector<uint32_t> &b);

private:
  virtual void DoRun (void) override;
  /**
   * \brief Test the output of PHY for a pattern, and compares it to the input
   * \param pattern The pattern to test
   * \param result The theoretical result
   */
  void TestPattern (const std::vector<LteNrTddSlotType> &pattern, const Result &result);

  /**
   * \brief Print the map
   * \param str the map to print
   */
  void Print (const std::map<uint32_t, std::vector<uint32_t> > &str);

  /**
   * \brief Print the Harq feedback map
   * \param str the map to print
   */
  void PrintHarq (const std::map<uint32_t, uint32_t> &str);

  bool m_verbose = false; //!< Print the generated structure
};


void
LtePatternNewTestCase::DoRun ()
{
  //xiaoying:Result(K0,K2,generateDl,generateUl,K1)
  Result n = {
    {
      { 0, {0, } },
      { 1, {0, } },
      { 2, {0, } },
      { 3, {0, } },
    },
    {
      { 0, {3, } },
      { 1, {3, } },
    },
    {
      { 0, {2, } },
      { 1, {2, } },
      { 3, {2, } },
      { 4, {2, } },
    },
    {
      { 3, {5, } },
      { 4, {5, } },
    },
    {
      {0, 8},
      {1, 7},
      {2, 6},
      {3, 5},
    }
  };

  auto fourteen = {
      LteNrTddSlotType::DL,
      LteNrTddSlotType::DL,
      LteNrTddSlotType::DL,
      LteNrTddSlotType::F,
      LteNrTddSlotType::UL,
      
  };

  TestPattern (fourteen, n);

}

void
LtePatternNewTestCase::Print (const std::map<uint32_t, std::vector<uint32_t> > &str)
{
  std::cout << "{" << std::endl;
  for (const auto & v : str)
    {
      std::cout << " { " << v.first << ", {";
      for (const auto & i : v.second)
        {
          std::cout << i << ", ";
        }
      std::cout << "} }," << std::endl;
    }
  std::cout << "}" << std::endl;
}

void
LtePatternNewTestCase::PrintHarq (const std::map<uint32_t, uint32_t> &str)
{
  std::cout << "{" << std::endl;
  for (const auto & v : str)
    {
      std::cout << " { " << v.first << ", ";
      std::cout << v.second;
      std::cout << "}" << std::endl;
    }
  std::cout << "}" << std::endl;
}


void
LtePatternNewTestCase::CheckVector (const std::vector<uint32_t> &a,
                                 const std::vector<uint32_t> &b)
{
  NS_TEST_ASSERT_MSG_EQ (a.size (), b.size (), "Two vectors have different length");
  for (uint32_t i = 0; i < a.size (); ++i)
    {
      NS_TEST_ASSERT_MSG_EQ (a[i], b[i], "Values in vector diffes");
    }
}

void
LtePatternNewTestCase::CheckMap (const std::map<uint32_t, std::vector<uint32_t> > &a,
                              const std::map<uint32_t, std::vector<uint32_t> > &b)
{
  NS_TEST_ASSERT_MSG_EQ (a.size (), b.size (), "Two maps have different length");

  for (const std::pair<const uint32_t, std::vector<uint32_t> > & v : a)
    {
      CheckVector (a.at (v.first), b.at (v.first));
    }
}

void
LtePatternNewTestCase::CheckHarqMap (const std::map<uint32_t, uint32_t> &a,
                                  const std::map<uint32_t, uint32_t> &b)
{
  NS_TEST_ASSERT_MSG_EQ (a.size (), b.size (), "Two HARQ maps have different length");

  for (const auto & element : a)
    {
      NS_TEST_ASSERT_MSG_EQ (element.second, b.at (element.first), "A value in A is different from the value for the same key in B");
    }

}


void
LtePatternNewTestCase::TestPattern (const std::vector<LteNrTddSlotType> &pattern,
                                 const Result &result)
{
  std::map<uint32_t, std::vector<uint32_t> > toSendDl;
  std::map<uint32_t, std::vector<uint32_t> > toSendUl;
  std::map<uint32_t, std::vector<uint32_t> > generateDl;
  std::map<uint32_t, std::vector<uint32_t> > generateUl;
  std::map<uint32_t, uint32_t> dlHarqFb;

  NrGnbPhy::GenerateStructuresFromPattern (pattern, &toSendDl, &toSendUl, &generateDl, &generateUl, &dlHarqFb, 0, 3, 5, 2);

  if (m_verbose)
    {
      std::cout << std::endl << "PATTERN to test: ";
      for (const auto & v : pattern)
        {
          std::cout << v << " ";
        }
      std::cout << std::endl;
    }

  if (m_verbose)
    {
      std::cout << "To Send DL theoretic:" << std::endl;
      Print (toSendDl);
      std::cout << "To Send DL result:" << std::endl;
      Print (result.m_toSendDl);
    }
  CheckMap (toSendDl, result.m_toSendDl);

  if (m_verbose)
    {
      std::cout << "To Send UL theoretic:" << std::endl;
      Print (toSendUl);
      std::cout << "To Send UL result:" << std::endl;
      Print (result.m_toSendUl);
    }

  CheckMap (toSendUl, result.m_toSendUl);

  if (m_verbose)
    {
      std::cout << "Generate DL theoretic:" << std::endl;
      Print (generateDl);
      std::cout << "Generate DL result:" << std::endl;
      Print (result.m_generateDl);
    }

  CheckMap (generateDl, result.m_generateDl);

  if (m_verbose)
    {
      std::cout << "Generate UL theoretic:" << std::endl;
      Print (generateUl);
      std::cout << "Generate UL result:" << std::endl;
      Print (result.m_generateUl);
    }

  CheckMap (generateUl, result.m_generateUl);

  if (m_verbose)
    {
      std::cout << "HarqFB theoretic:" << std::endl;
      PrintHarq (dlHarqFb);
      std::cout << "HarqFB result:" << std::endl;
      PrintHarq (result.m_dlHarqFb);
    }

  CheckHarqMap (dlHarqFb, result.m_dlHarqFb);
}

/**
 * \brief The NrLtePatternNewTestSuite class
 */
class NrLtePatternNewTestSuite : public TestSuite
{
public:
  NrLtePatternNewTestSuite () : TestSuite ("nr-lte-pattern-generation-new", UNIT)
  {
    AddTestCase (new LtePatternNewTestCase ("XNEWTDD Pattern test"), QUICK);
  }
};

static NrLtePatternNewTestSuite nrLtePatternNewTestSuite; //!< Pattern test suite

}  // namespace ns3
