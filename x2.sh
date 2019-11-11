#!/bin/bash
#
# Script to clone x2 device sources
#
#

# Device tree
echo -e "\n================== Cloning Device tree for leeco ==================\n"
git clone https://github.com/beingmishra/device_leeco_x2 device/leeco/x2

# Kernel tree
echo -e "\n================== Cloning Kernel tree for leeco ==================\n"
git clone https://github.com/RevengeOS-Devices/android_kernel_leeco_msm8996 -b r10.0-walt kernel/leeco/msm8996

# Vendor tree
echo -e "\n================== Cloning Vendor tree for leeco ==================\n"
git clone https://github.com/beingmishra/vendor_leeco vendor/leeco

# Common tree
echo -e "\n================== Cloning Common tree for leeco ==================\n"
git clone https://github.com/RevengeOS-Devices/android_device_leeco_msm8996-common -b r10.0-eas device/leeco/msm8996-common

# devicesettings
echo -e "\n================== Cloning devicesettings ==================\n"
git clone https://github.com/LineageOS/android_packages_resources_devicesettings packages/resources/devicesettings

echo "Happy bulding"
