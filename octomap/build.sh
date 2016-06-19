#!/bin/bash

mkdir build
cd build

# Configure step
cmake .. \
 -DCMAKE_INSTALL_PREFIX=${PREFIX} \
 -DCMAKE_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu

# Build step
make -j $CPU_COUNT

# Install step
sudo make install

