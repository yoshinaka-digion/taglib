#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
cd ..
echo "pwd=$PWD"
cmake -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_FRAMEWORK=ON \
    -DBUILD_EXAMPLES=ON \
    -DCMAKE_C_COMPILER=/usr/bin/clang \
    -DCMAKE_CXX_COMPILER=/usr/bin/clang++ \
    -DCMAKE_OSX_SYSROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX11.1.sdk/ \
    -DCMAKE_OSX_DEPLOYMENT_TARGET=11.1 \
    -DCMAKE_OSX_ARCHITECTURES="x86_64"

make

cp -fr ./script/Modules  ./bindings/c/tag_c.framework/

