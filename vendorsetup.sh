#!/bin/bash
#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2021-2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
# Select the device before sourcing build/envsetup.sh; use a fresh build shell.
FDEVICE="raphael"

aera_get_target_device() {
  if echo "$BASH_SOURCE" | grep -q "/$FDEVICE/"; then
      AERA_BUILD_DEVICE="$FDEVICE";
  elif set | grep BASH_ARGV | grep -w \"$FDEVICE\"; then
      AERA_BUILD_DEVICE="$FDEVICE";
  elif echo "${BASH_SOURCE[0]}" | grep -q "/$FDEVICE/"; then
      AERA_BUILD_DEVICE="$FDEVICE";
  elif echo "$0" | grep -q "$FDEVICE"; then
      AERA_BUILD_DEVICE="$FDEVICE";
  fi
}

if [ -z "$1" -a -z "$AERA_BUILD_DEVICE" ]; then
   aera_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$AERA_BUILD_DEVICE" = "$FDEVICE" ]; then

    export LC_ALL="C"
    export AERA_PRODUCT_PREFIX=AERA
    export AERA_BUILD_STATUS=Unofficial
    export AERA_BUILD_TYPE=Beta
    export AERA_FORCE_PREBUILT_KERNEL=1
    export AERA_USE_UPDATED_MAGISKBOOT=1
    export AERA_USE_BUSYBOX_BINARY=1
    export AERA_USE_TAR_BINARY=1
    export AERA_USE_SED_BINARY=1
    export AERA_USE_XZ_UTILS=1
    export AERA_USE_LZ4_BINARY=1
    export AERA_USE_ZSTD_BINARY=1
    export AERA_USE_DATE_BINARY=1

    # EROFS support
    export AERA_USE_FSCK_EROFS_BINARY=1

    # Preserve the existing partition/installer behavior.
    export AERA_USE_DMCTL=1
    export AERA_NO_TREBLE_COMPATIBILITY_CHECK=1
    export AERA_UNMOUNT_SDCARDS_BEFORE_REBOOT=1

    # Keep image within the 64 MiB recovery partition budget during bring-up.
    export AERA_ENABLE_ROOT_MANAGER=0
    export AERA_EXCLUDE_NANO_EDITOR=1

    # Device assertions
    export TARGET_DEVICE_ALT="raphaelin"
    export AERA_TARGET_DEVICES="raphael,raphaelin"

    # Theme/Settings Storage (/persist is unencrypted and readable before unlock)
    export AERA_ALLOW_EARLY_SETTINGS_LOAD=1
    export AERA_SETTINGS_ROOT_DIRECTORY=/data/recovery
    export AERA_MISCELLANEOUS_ROOT_DIRECTORY=/sdcard

    # Maintainer Stuff
    export AERA_MAINTAINER="QCerberusQ"
    
else
	if [ -z "$AERA_BUILD_DEVICE" -a -z "$BASH_SOURCE" ]; then
		echo "I: This script requires bash. Not processing the $FDEVICE $(basename $0)"
	fi
fi
