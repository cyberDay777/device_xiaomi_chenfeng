#
 # Copyright (C) 2024 The LineageOS Project
 #
 # SPDX-License-Identifier: Apache-2.0
 #
 
 # Inherit from those products. Most specific first.
 $(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
 $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
 
 # Inherit some common Lineage stuff.
 $(call inherit-product, vendor/lineage/config/common_full_phone.mk)
 
 # Inherit from peridot device
 $(call inherit-product, device/xiaomi/chenfeng/device.mk)
 
 PRODUCT_NAME := lineage_chenfeng
 PRODUCT_DEVICE := chenfeng
 PRODUCT_MANUFACTURER := Xiaomi
 PRODUCT_BRAND := civi
 PRODUCT_MODEL := 4 pro
 
 PRODUCT_SYSTEM_NAME := chenfeng_in
 PRODUCT_SYSTEM_DEVICE := chenfeng
 
 PRODUCT_BUILD_PROP_OVERRIDES += \
     PRIVATE_BUILD_DESC="chenfeng-user 15 AQ3A.240912.001 OS2.0.2.0.VNJINXM release-keys"
     TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
     TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)
 
 BUILD_FINGERPRINT := xiaomi/chenfeng_in/chenfeng:15/:AQ3A.240912.001/OS2.0.2.0.VNJINXM:user/release-keys
 
 PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
