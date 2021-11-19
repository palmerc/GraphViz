#!/bin/bash

BUILD_DIR=build
INSTALL_DIR=dist
BISON_DIR=/usr/local/Cellar/bison/3.8.2/bin

rm -rf ${BUILD_DIR}
mkdir -p ${BUILD_DIR}
pushd ${BUILD_DIR}
cmake \
    -G Ninja \
    -D CMAKE_VERBOSE_MAKEFILE=on \
    -D CMAKE_INSTALL_PREFIX=${INSTALL_DIR} \
    -D CMAKE_PREFIX_PATH=${BISON_DIR} \
    -D CMAKE_TOOLCHAIN_FILE=cmake/macosx.toolchain.cmake \
    ..

cmake --build .
popd
