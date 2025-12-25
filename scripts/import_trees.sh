#!/bin/bash

# Default branch for most repos
BRANCH="lineage-23.1"
# Specific branch for hardware/nothing
HARDWARE_NOTHING_BRANCH="lineage-23.0"

echo "Cloning Nothing Phone 2a repos..."
echo "Default Branch: $BRANCH"
echo "Hardware Nothing Branch: $HARDWARE_NOTHING_BRANCH"

# ==============================
# Device Trees
# ==============================
echo "Cloning device/nothing/Aerodactyl..."
git clone -b $BRANCH \
https://github.com/Nothing-2A/android_device_nothing_Aerodactyl.git \
device/nothing/Aerodactyl

echo "Cloning device/nothing/Aerodactyl-kernel..."
git clone -b $BRANCH \
https://github.com/Nothing-2A/android_device_nothing_Aerodactyl-kernel \
device/nothing/Aerodactyl-kernel

# ==============================
# Vendor Trees
# ==============================
echo "Cloning vendor/nothing/Aerodactyl..."
git clone -b $BRANCH \
https://gitlab.com/nothing-2a/proprietary_vendor_nothing_Aerodactyl.git \
vendor/nothing/Aerodactyl

echo "Cloning vendor/nothing/Pacman..."
git clone -b $BRANCH \
https://gitlab.com/nothing-2a/proprietary_vendor_nothing_Pacman.git \
vendor/nothing/Pacman

echo "Cloning vendor/nothing/PacmanPro..."
git clone -b $BRANCH \
https://gitlab.com/nothing-2a/proprietary_vendor_nothing_PacmanPro.git \
vendor/nothing/PacmanPro

# ==============================
# Hardware Trees
# ==============================
echo "Cloning device/mediatek/sepolicy_vndr..."
git clone -b $BRANCH \
https://github.com/Nothing-2A/android_device_mediatek_sepolicy_vndr \
device/mediatek/sepolicy_vndr

echo "Cloning hardware/mediatek..."
git clone -b $BRANCH \
https://github.com/Nothing-2A/android_hardware_mediatek \
hardware/mediatek

echo "Cloning hardware/nothing (using $HARDWARE_NOTHING_BRANCH)..."
git clone -b $HARDWARE_NOTHING_BRANCH \
https://github.com/Nothing-2A/android_hardware_nothing \
hardware/nothing

echo "All repos cloned successfully!"
