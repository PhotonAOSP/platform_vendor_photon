# Include PhotonAOSP common configuration
include vendor/photon/main.mk

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Setup device specific product configuration.
PRODUCT_NAME := photon_shamu
PRODUCT_BRAND := google
PRODUCT_DEVICE := shamu
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/bootanimation/shamu.zip:system/media/bootanimation.zip
