#!/bin/bash

# build_type=Release
build_type=Debug

# change directory to the script directory
cd "$(dirname "$0")"

# Clean the build/ directory
rm -rf build && mkdir build

cd build

# configure the build system (cmake)
cmake -DCMAKE_BUILD_TYPE=$build_type -S .. -B .

# compile the firmware
cmake --build .

# generate the firmware binary file from the elf file
arm-none-eabi-objcopy -O binary firmware.elf firmware.bin
