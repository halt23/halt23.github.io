#!/bin/bash

yaourt -Sy --noconfirm cmake extra-cmake-modules boost

git clone https://github.com/calamares/calamares.git
cd calamares
git checkout --track origin/1.1.x-stable -b 1.1.x-stable
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr -DWITH_PARTITIONMANAGER=1 ..
make -j4
sudo make install
