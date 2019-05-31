#
# Copyright (C) 2017 The LineageOS Project
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
$(call inherit-product, device/huawei/prague/full_prague.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit DarkJoker360's Vendor
$(call inherit-product-if-exists, vendor/DarkJoker360/DarkJoker360.mk)

TARGET_AOSP_BASED := true

PRODUCT_NAME := aosp_prague
PRODUCT_DEVICE := prague
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Huawei P8 Lite 2017

PRODUCT_PACKAGES += \
    Launcher3QuickStep \
    messaging
