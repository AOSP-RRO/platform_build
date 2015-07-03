#!/bin/bash
# USAGE: . build.sh codename
DEVICE="$1"

. build/envsetup.sh
export USE_PREBUILT_CHROMIUM=1
lunch aosp_$DEVICE-userdebug
make bacon -j$(grep -c ^processor /proc/cpuinfo)
