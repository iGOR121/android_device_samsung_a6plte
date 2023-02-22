#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device
$(call inherit-product, device/samsung/a6plte/device.mk)

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Device identifier. This must come after all inclusions
TARGET_VENDOR := samsung
PRODUCT_DEVICE := a6plte
PRODUCT_NAME := lineage_a6plte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := galaxy a6+
PRODUCT_MANUFACTURER := samsung
BOARD_VENDOR := samsung

# PRODUCT_BUILD_PROP_OVERRIDES += \
#         PRODUCT_NAME=a6plte \
