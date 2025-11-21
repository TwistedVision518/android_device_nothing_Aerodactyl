#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_Pacman.mk \
    $(LOCAL_DIR)/aosp_PacmanPro.mk

COMMON_LUNCH_CHOICES := \
    aosp_Pacman-aosp_current-userdebug \
    aosp_PacmanPro-aosp_current-userdebug
