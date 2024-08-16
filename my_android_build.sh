#!/bin/bash

# Set up environment variables
export NDK=/home/x23017/ndk/android-ndk-r23c
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/linux-x86_64
export TARGET=aarch64-linux-android
export API=21
export AR=$TOOLCHAIN/bin/$TARGET-ar
export AS=$TOOLCHAIN/bin/$TARGET-as
export LD=$TOOLCHAIN/bin/ld
export CC=$TOOLCHAIN/bin/$TARGET$API-clang
export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
export RANLIB=$TOOLCHAIN/bin/$TARGET-ranlib
export STRIP=$TOOLCHAIN/bin/$TARGET-strip

# Add architecture flags
# export CFLAGS="-march=armv8-a --sysroot=$NDKROOT/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21"
# export CXXFLAGS="-march=armv8-a --sysroot=$NDKROOT/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21"

# Clone the Valgrind repository
# git clone git://sourceware.org/git/valgrind.git
# cd valgrind

# Run autogen.sh to generate the configure script
./autogen.sh

#./configure --prefix=/data/local/Inst --host=aarch64-unknown-linux --target=aarch64-unknown-linux --with-tmpdir=/sdcard
./configure --prefix=/data/local/Inst --host=aarch64-unknown-linux --target=aarch64-unknown-linux --with-tmpdir=sdcard0 \ CPPFLAGS="--sysroot=$NDKROOT/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21" \ CFLAGS="-march=armv8-a -sysroot=$NDKROOT/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android21" \  CC=$CC LD=$LD AR=$AR


# Configure the build for the Android target
#./configure --host=$TARGET --target=$TARGET --prefix=/home/x23017/code/valgrind_install_android

# Compile and install Valgrind
make -j8
make -j8 install DESTDIR=`pwd`/Inst