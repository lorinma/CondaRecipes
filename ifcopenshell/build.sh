if [ "$PY3K" == "1" ]; then
    MY_PY_VER="${PY_VER}m"
else
    MY_PY_VER="${PY_VER}"
fi

if [ `uname` == Darwin ]; then
    PY_LIB="libpython${MY_PY_VER}.dylib"
else
    PY_LIB="libpython${MY_PY_VER}.so"
fi

mkdir build
cd build

# Configure step
cmake ../cmake/ \
 -DCMAKE_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu \
 -DBUILD_EXAMPLES=OFF \
 -DCMAKE_BUILD_TYPE=Release \
 -DCMAKE_INSTALL_PREFIX=$PREFIX \
 -DCOLLADA_SUPPORT=OFF \
 -DENABLE_BUILD_OPTIMIZATIONS=ON \
 -DOCC_INCLUDE_DIR=$PREFIX/include/oce \
 -DOCC_LIBRARY_DIR=$PREFIX/lib \
 -DPYTHON_INCLUDE_DIR:PATH=$PREFIX/include/python$MY_PY_VER \
 -DPYTHON_LIBRARY:FILEPATH=$PREFIX/lib/${PY_LIB}
 
# Build step 
make -j $CPU_COUNT

# Install step
make install