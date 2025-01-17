#
# Copyright (C) 2019 Potato Open Sauce Project
# Copyright (C) 2021 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/chopin/device.mk)

# Inherit some common Pixel-Experience stuff.
$(call inherit-product, vendor/aosp/config/phone.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := chopin
PRODUCT_NAME := aosp_chopin
PRODUCT_BRAND := Redmi
ifeq ($(IS_GLOBAL),true)
PRODUCT_MODEL := 21061110AG
else
PRODUCT_MODEL := M2104K10AC
endif
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="raven-user 12 SP3A.220705.003.A1 8672226 release-keys" \
        PRODUCT_NAME="chopin"

PRODUCT_PROPERTY_OVERRIDES += ro.build.fingerprint=google/raven/raven:12/SQ3A.220705.003.A1/8672226:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_CHARACTERISTICS := nosdcard
