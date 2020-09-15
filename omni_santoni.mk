#
# Copyright (C) 2017 The Android Open Source Project
# Copyright (C) 2017 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, build/target/product/embedded.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit 64bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := santoni
PRODUCT_NAME := omni_santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4X
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := santoni

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="santoni-user 7.1.2 N2G47H V9.5.10.0.NAMMIFD release-keys"

BUILD_FINGERPRINT := Xiaomi/santoni/santoni:7.1.2/N2G47H/V9.5.10.0.NAMMIFD:user/release-keys
