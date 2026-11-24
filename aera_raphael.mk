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
# Display metrics (AERA_SCREEN_H, AERA_STATUS_INDENT_*), partition tools,
# and f2fs/metadata switches are placed in BoardConfig.mk so Soong and early
# Make bridges consume them.

# Quick backup list
AERA_QUICK_BACKUP_LIST := /boot;/data;

# Enable WLAN only after a 4.14-compatible Wi-Fi bring-up is added.
# AERA_ENABLE_WLAN := 1
