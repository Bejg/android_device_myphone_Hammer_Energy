#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Hammer_Energy device
$(call inherit-product, device/myphone/Hammer_Energy/device.mk)

PRODUCT_DEVICE := Hammer_Energy
PRODUCT_NAME := omni_Hammer_Energy
PRODUCT_BRAND := myPhone
PRODUCT_MODEL := Hammer Energy
PRODUCT_MANUFACTURER := myphone

PRODUCT_GMS_CLIENTID_BASE := android-myphone

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_fq5c62wt_xwp_v18s_mp_opm-user 8.1.0 O11019 1534572334 release-keys"

BUILD_FINGERPRINT := myPhone/Hammer_Energy/Hammer_Energy:8.1.0/O11019/1534572334:user/release-keys
