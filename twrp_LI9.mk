#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-LI9 device
$(call inherit-product, device/tecno/LI9/device.mk)

PRODUCT_DEVICE := LI9
PRODUCT_NAME := twrp-LI9
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LI9
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_li9_h335-user 12 SP1A.210812.016 591163 release-keys"

BUILD_FINGERPRINT := TECNO/LI9-OP/TECNO-LI9:12/SP1A.210812.016/240424V1442:user/release-keys
