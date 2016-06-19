#!/bin/bash

mkdir build
cd build

cmake ../scripts \
 -DCMAKE_BUILD_TYPE=Release \
 -DCMAKE_INSTALL_PREFIX=$PREFIX

make -j $CPU_COUNT

make install
