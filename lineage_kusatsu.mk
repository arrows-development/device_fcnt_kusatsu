#
# SPDX-FileCopyrightText: LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/fcnt/kusatsu/device.mk)

# Inherit some common lineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# WitAqua stuff
PROCESSOR_INFO := MediaTek Dimensity 7025
WITAQUA_MAINTAINER := kailua

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_kusatsu
PRODUCT_DEVICE := kusatsu
PRODUCT_MANUFACTURER := FCNT
PRODUCT_BRAND := FCNT
PRODUCT_MODEL := FCG02

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=FCG02 \
    BuildDesc="FCG02_jp_kdi-user 15 V35RK52B FCG02.20251029 release-keys" \
    BuildFingerprint=FCNT/FCG02_jp_kdi/FCG02:15/V35RK52B/FCG02.20251029:user/release-keys
