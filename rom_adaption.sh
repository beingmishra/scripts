#!/bin/bash
#
# Script to set up Device Tree
# for android ROM compiling
#
#

read -p "Enter the rom name device adopted already : " word
read -p "Enter the rom name you going to compile : " replace

echo "Enter the makefile name"
echo "For eg lineage_bacon.mk"
read mkfile

read -p "You entered: $mkfile is correct y/n  " yn

read -p "Should we proceed? y/n " yn
case $yn in
    [Yy]* ) perl -pi -e "s/$word/$replace/" $word*.mk
            perl -pi -e "s/$word/$replace/"  AndroidProducts.mk
            mv $word*.mk $mkfile;;
    [Nn]* ) exit;;
esac

