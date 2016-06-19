mkdir build
cd build

# Configure step
cmake .. \
 -DPYTHONOCC_BUILD_TYPE=Release \
 -DOCE_INCLUDE_PATH=$PREFIX/include/oce \
 -DOCE_LIB_PATH=$PREFIX/lib
 
# Build step 
make -j $CPU_COUNT

# Install step
make install