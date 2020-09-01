#!/bin/bash
# git clone --recursive https://github.com/oxfordcontrol/osqp
unzip osqp
pushd osqp
mkdir build
cd build
cmake -G "Unix Makefiles" ..
cmake --build . --target install
popd
rm -rf osqp
