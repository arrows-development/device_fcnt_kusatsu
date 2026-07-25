#
# SPDX-FileCopyrightText: LineageOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/fcnt/sbuya/device.mk)

# Inherit some common lineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := lineage_sbuya
PRODUCT_DEVICE := sbuya
PRODUCT_MANUFACTURER := FCNT
PRODUCT_BRAND := FCNT
PRODUCT_MODEL := F-52G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=sbuya \
    BuildDesc="F-52G-user 16 W3WG36.67-30-15 08cafb-7d9a6b release-keys MW-448" \
    BuildFingerprint=FCNT/sbuya_dcm_sys/sbuya:16/W3WG36M.67-30-15/7d9a6b:user/release-keys
