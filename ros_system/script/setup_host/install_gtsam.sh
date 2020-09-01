#!/bin/bash

wget https://github.com/borglab/gtsam/archive/4.0.0-alpha2.zip
mv 4.0.0-alpha2.zip gtsam-4.0.0-alpha2.zip
unzip gtsam-4.0.0-alpha2.zip
cd gtsam-4.0.0-alpha2
mkdir build
cd build/
cmake ..
make install
rm -r gtsam-4.0.0-alpha2 gtsam-4.0.0-alpha2.zip


