# Include PhotonAOSP common configuration
include vendor/photon/main.mk

# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Setup device specific product configuration.
PRODUCT_NAME := photon_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Boot animation
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/bootanimation/hammerhead.zip:system/media/bootanimation.zip
