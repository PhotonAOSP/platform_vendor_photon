# Include PhotonAOSP common configuration
include vendor/photon/main.mk

# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/mako/aosp_mako.mk)

# Setup device specific product configuration.
PRODUCT_NAME := photon_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/bootanimation/hammerhead.zip:system/media/bootanimation.zip
