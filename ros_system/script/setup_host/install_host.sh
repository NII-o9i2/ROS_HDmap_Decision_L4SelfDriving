#!/usr/bin/env bash

###############################################################################
# Copyright 2019 The Zibet Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################

# Fail on first error.
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

# Update source
echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list
apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
apt-get update -y

# Install ros
echo "Install ros-kinetic, please wait..."
apt-get install -y ros-kinetic-desktop-full
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

# Install protobuf compile tool
echo "Install protobuf compile tool, please wait..."
sudo apt-get install -y protobuf-compiler

# Install gflags
echo "Install google gflags, please wait..."
apt-get install -y libgflags-dev

# Install glog which also depends on gflags.
echo "Install google glog, please wait..."
tar xzf glog-0.3.5.tar.gz
pushd glog-0.3.5
./configure CPPFLAGS="-I/usr/local/include" LDFLAGS="-L/usr/local/lib"
make -j8 CXXFLAGS='-Wno-sign-compare -Wno-unused-local-typedefs -D_START_GOOGLE_NAMESPACE_="namespace google {" -D_END_GOOGLE_NAMESPACE_="}" -DGOOGLE_NAMESPACE="google" -DHAVE_PTHREAD -DHAVE_SYS_UTSNAME_H -DHAVE_SYS_SYSCALL_H -DHAVE_SYS_TIME_H -DHAVE_STDINT_H -DHAVE_STRING_H -DHAVE_PREAD -DHAVE_FCNTL -DHAVE_SYS_TYPES_H -DHAVE_SYSLOG_H -DHAVE_LIB_GFLAGS -DHAVE_UNISTD_H'
make install
popd
rm -fr glog-0.3.5

# Install leveldb
echo "Install leveldb, please wait..."
apt-get install -y libleveldb-dev 

# Install proj library
echo "Install libproj, please wait..."
apt-get install -y libproj-dev 

# Install opencv
echo "Install opencv, please wait..."
apt-get install -y libopencv-dev

# Install pcap library
echo "Install pcap library, please wait..."
apt-get install -y libpcap-dev

# Install plot tool
echo "Install plotjuggler, please wait..."
apt-get install -y ros-kinetic-plotjuggler

# Install ipopt
unzip Ipopt-3.12.8.zip
cp MUMPS_4.10.0.tar.gz Ipopt-3.12.8/ThirdParty/Mumps
pushd Ipopt-3.12.8
./configure
make
make install
cp -r include/coin /usr/local/include/ipopt 
cp lib/libipopt.so* /usr/local/lib/
popd
rm -rf Ipopt-3.12.8

# Install qpOASES
unzip qpOASES-3.2.1.zip
pushd qpOASES-3.2.1
make -j8 CPPFLAGS="-Wall -pedantic -Wshadow -Wfloat-equal -O3 -Wconversion \
                   -Wsign-conversion -fPIC -DLINUX -DSOLVER_NONE \
                   -D__NO_COPYRIGHT__"
cp bin/libqpOASES.so /usr/local/lib
cp -r include/* /usr/local/include
popd
rm -rf qpOASES-3.2.1

wget https://github.com/borglab/gtsam/archive/4.0.0-alpha2.zip
mv 4.0.0-alpha2.zip gtsam-4.0.0-alpha2.zip
unzip gtsam-4.0.0-alpha2.zip
cd gtsam-4.0.0-alpha2
mkdir build
cd build/
cmake ..
make install
rm -fr gtsam-4.0.0-alpha2
rm -f gtsam-4.0.0-alpha2.zip

# Create soft link to eigne lib under /usr/include
echo "Create soft link to eigne, please wait..."
cd /usr/include 
ln -sf eigen3/Eigen/ Eigen
ln -sf eigen3/unsupported/ unsupported

echo "======================================================"
echo "Please run the commands followed to complete install"
echo "1. apt-cache search ros-kinetic"
echo "2. sudo rosdep init"
echo "3. rosdep update"
echo "*********************Enjoy it!************************"
echo "======================================================"


