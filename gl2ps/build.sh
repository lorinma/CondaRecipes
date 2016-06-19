#! /bin/bash
cmake -DCMAKE_INSTALL_PREFIX=$PREFIX -DENABLE_PNG=OFF .
make -j $CPU_COUNT
make install