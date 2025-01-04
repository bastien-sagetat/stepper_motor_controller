#!/bin/bash

# change directory to the script directory
cd "$(dirname "$0")"

cd build

# flash and reset the mcu
st-flash write firmware.bin 0x08000000
st-flash reset
