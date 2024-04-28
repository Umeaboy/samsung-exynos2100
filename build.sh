#!/bin/bash
set -xe

export PLATFORM_VERSION=11
export ANDROID_MAJOR_VERSION=s
export TARGET_SOC=exynos2100
export LLVM_IAS=1

[ -d build ] || git clone https://gitlab.com/ubports/community-ports/halium-generic-adaptation-build-tools -b halium-11 build
./build.sh "$@"
