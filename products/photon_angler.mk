# Include PhotonAOSP common configuration
include vendor/photon/main.mk

# Inherit AOSP device configuration for angler.
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Setup device specific product configuration.
PRODUCT_NAME := photon_angler
PRODUCT_BRAND := google
PRODUCT_DEVICE := angler
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := Huawei

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/bootanimation/angler.zip:system/media/bootanimation.zip
