#!/bin/bash
#
# Script to clone angler device sources
#
#

# Device tree
echo -e "\n================== Cloning Device tree for angler ==================\n"
git clone https://github.com/beingmishra/device_huawei_angler device/huawei/angler

# Kernel tree
echo -e "\n================== Cloning Kernel tree for angler ==================\n"
git clone https://github.com/beingmishra/kernel_huawei_angler kernel/huawei/angler

# Vendor tree
echo -e "\n================== Cloning Vendor tree for angler ==================\n"
git clone https://github.com/beingmishra/vendor_huawei_angler vendor/huawei/angler

echo "Happy building :D"
