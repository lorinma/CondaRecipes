#!/bin/sh

python setup.py build_ext --include-dirs $PREFIX/include --library-dirs $PREFIX/lib install