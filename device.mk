#
# Copyright (C) 2025 Team Win Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Hardware platform
PRODUCT_PLATFORM := msmnile

# SM8150 is a native 4 KiB-page platform; skip Android 16's 16 KiB prebuilt ELF check.
PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false

# API
PRODUCT_SHIPPING_API_LEVEL := 28

# Crypto
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd (Mock implementation for recovery)
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock

# Overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=$(PRODUCT_RELEASE_NAME) \
    TARGET_DEVICE=$(PRODUCT_RELEASE_NAME)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=$(PRODUCT_RELEASE_NAME)

# Emulated storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/qcom/opensource/commonsys-intf/display
