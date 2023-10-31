

# Info

Author: Lizhao You
Date: 2023-03-22

# How to Run?

1. git clone the ns3 project, and switch to the arraycomm branch
```
git clone --branch arraycomm ssh://gitolite@gitlab.arraycomm.com:7002/xmu/ac-system-level-sim
```
2. download the nr project, and switch to the arraycomm branch
```
git submodule update --init
git submodule foreach git checkout -b arraycomm origin/arraycomm
```
3. Compile and Run
```
./ns3 clean
./ns3 configure --enable-examples
./ns3 build nr -j 16
./ns3 run cttc-nr-mimo-demo -- --simTime=0.5
```
