#!/bin/bash

mkdir build
cd build

cmake .. \
 -DCMAKE_BUILD_TYPE=Release \
 -DMeta_INCLUDE_DIR=$PREFIX/include
# the first cmake can't change the install prefix
cmake .. \
 -DCMAKE_INSTALL_PREFIX=$PREFIX

make -j $CPU_COUNT

make install
