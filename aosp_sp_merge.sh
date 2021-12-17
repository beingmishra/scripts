#!/bin/bash

# Change Vairable values as per ur need
tag=android-12.0.0_r21
romdir=octavi
status=1 #do no change
repo=("frameworks/base" "packages/apps/Settings" "frameworks/av" "hardware/qcom/wlan" "packages/services/Telephony" "frameworks/opt/telephony" "frameworks/opt/net/wifi" "packages/apps/Nfc" "frameworks/native" "system/netd" "system/bpf" "system/vold" "system/bt" "system/sepolicy" "system/core" "build/soong" "art")

# Start the merge
for i in ${repo[@]};
do
  echo "Starting the merge in "$i "repo"
  flag=0
  cd ~/$romdir/$i && git fetch https://android.googlesource.com/platform/$i $tag && git merge FETCH_HEAD && flag=1

  if [ $flag -eq 1 ]
  then
  	echo "Merge in "$i "Successful"
	status=1
  else
	echo "Merge failed, Fix Conflicts"
	status=0
	break
  fi
done

# We need to repeat the process for build repo manually coz in aosp source the repo name in build but in source the dir is build/make
if [ $status -eq 1 ]
then
  echo "Starting the merge in build repo"
  flag=0
  cd ~/$romdir/build/make && git fetch https://android.googlesource.com/platform/build $tag && git merge FETCH_HEAD && flag=1
  if [ $flag -eq 1 ]
  then
        echo "Merge in "$i "Successful"
  else
        echo "Merge failed, Fix Conflicts"
  fi
  echo "Merge done"
fi
