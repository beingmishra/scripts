#!/bin/bash
#
# Script to clone bacon device sources
#
#

# Device tree
echo -e "\n================== Cloning Device tree for bacon ==================\n"
git clone https://github.com/beingmishra/device_oneplus_bacon device/oneplus/bacon

# Kernel tree
echo -e "\n================== Cloning Kernel tree for bacon ==================\n"
git clone https://github.com/beingmishra/kernel_oneplus_msm8974 kernel/oneplus/msm8974

# Vendor tree
echo -e "\n================== Cloning Vendor tree for bacon ==================\n"
git clone https://github.com/beingmishra/vendor_oneplus_bacon vendor/oneplus/bacon

# Common tree
echo -e "\n================== Cloning Common tree for bacon ==================\n"
git clone https://github.com/PotatoDevices/device_oppo_common -b baked-release device/oppo/common

# Boring-ssl
echo -e "\n================== Cloning BoringSSL-compat ==================\n"
git clone https://github.com/PotatoProject/external_sony_boringssl-compat -b baked-release external/sony/boringssl-compat

# devicesettings
echo -e "\n================== Cloning devicesettings ==================\n"
git clone https://github.com/LineageOS/android_packages_resources_devicesettings packages/resources/devicesettings

echo "Pick all required commits and Happy bulding"
