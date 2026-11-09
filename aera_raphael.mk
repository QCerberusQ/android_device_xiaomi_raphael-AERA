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

# AERA product configuration, inherited by twrp_raphael.mk.
AERA_USE_GREEN_LED := 0
AERA_NO_MIUI_PATCH_WARNING := 1

# Dinamik bölümler (Retrofit) için gerekli araçlar
AERA_ENABLE_ALL_PARTITION_TOOLS := 1

# Hızlı yedekleme listesi
AERA_QUICK_BACKUP_LIST := /boot;/data;

# Patch AVB 2.0
AERA_PATCH_AVB20 := 1

# OTA Ayarları
AERA_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
AERA_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1
AERA_DISABLE_MIUI_OTA_BY_DEFAULT := 1

# Format ve Metadata Ayarları
AERA_UNBIND_SDCARD_F2FS := 1
AERA_WIPE_METADATA_AFTER_DATAFORMAT := 1
AERA_FBE_METADATA_MOUNT_IGNORE := 1

# AERA's native opt-in replaces the legacy FRP addon.
AERA_ENABLE_FRP_WIPE := 1

# Wlan
AERA_ENABLE_WLAN := 1

# Ekran ve Arayüz Optimizasyonları
AERA_SCREEN_H := 2340
AERA_STATUS_INDENT_LEFT := 48
AERA_STATUS_INDENT_RIGHT := 48
