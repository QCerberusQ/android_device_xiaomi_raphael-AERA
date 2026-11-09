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
if [ "${AERA_BUILD_DEVICE:-}" = "raphael" ]; then
    export LC_ALL="C"
    export AERA_BUILD_STATUS=Unofficial
    export AERA_BUILD_TYPE=Alpha
    export AERA_USE_BASH_SHELL=1
    export AERA_ASH_IS_BASH=1
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

    # Preserve the original alias; AERA_TARGET_DEVICES uses the board assertions.
    # An explicit AERA_TARGET_DEVICES list awaits firmware identifier checks.
    export TARGET_DEVICE_ALT="raphaelin"

    # Theme/Settings Storage
    export AERA_ALLOW_EARLY_SETTINGS_LOAD=1
    export AERA_SETTINGS_ROOT_DIRECTORY=/data/recovery
    export AERA_MISCELLANEOUS_ROOT_DIRECTORY=/sdcard

    # Maintainer Stuff
    export AERA_MAINTAINER="QCerberusQ"
fi
