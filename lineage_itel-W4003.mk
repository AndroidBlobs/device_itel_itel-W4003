# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from itel-W4003 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := itel
PRODUCT_DEVICE := itel-W4003
PRODUCT_MANUFACTURER := itel
PRODUCT_NAME := lineage_itel-W4003
PRODUCT_MODEL := itel W4003

PRODUCT_GMS_CLIENTID_BASE := android-itel
TARGET_VENDOR := itel
TARGET_VENDOR_PRODUCT_NAME := itel-W4003
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="W4003-SA217-8.1-OP-V021-20190521"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Itel/SA217/itel-W4003:8.1.0/OPM2.171019.012/OP-V021-20190521:user/release-keys
