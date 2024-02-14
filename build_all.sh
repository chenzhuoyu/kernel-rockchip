#!/bin/bash
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 nanopi6-images -j 24
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 INSTALL_MOD_PATH="$PWD/out-modules" modules -j 24
make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 INSTALL_MOD_PATH="$PWD/out-modules" modules_install -j 24
find ./out-modules -name '*.ko' | xargs aarch64-linux-gnu-strip --strip-unneeded

