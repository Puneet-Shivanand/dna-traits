#! /bin/sh
set -e
rm -rf build
mkdir build
cd build; time ( \
  cmake .. \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_OSX_ARCHITECTURES=x86_64 \
    -DCMAKE_INSTALL_PREFIX=install \
    -G 'Ninja' && ninja $*)
