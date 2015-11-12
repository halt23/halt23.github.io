#!/bin/bash

setxkbmap it

sudo cp -R /usr/share/calamares /usr/share/calamares.backup
sudo cp -R /etc/calamares /etc/calamares.backup

yaourt -Sy --noconfirm cmake extra-cmake-modules boost

BRANCH=$1
if [ -z "$1" ]; then
    BRANCH=master
fi

if [ -d calamares ]
    cd calamares
    git checkout --track origin/$BRANCH -b $BRANCH
    git pull --rebase
    git submodule update
    git submodule sync
    if [ -d build ]
        rm -rf build
    fi
else
    git clone https://github.com/calamares/calamares.git
    cd calamares
    git checkout --track origin/$BRANCH -b $BRANCH
    git submodule init
    git submodule update
    git submodule sync
fi
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr -DWITH_PARTITIONMANAGER=1 ..
make -j4
sudo make install

sudo cp -R /usr/share/calamares.backup/* /usr/share/calamares/
sudo cp -R /etc/calamares.backup/* /etc/calamares/
