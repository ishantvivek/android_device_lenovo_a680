## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := CM-A680

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/a680/device_a680.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a680
PRODUCT_NAME := cm_a680
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := A680


