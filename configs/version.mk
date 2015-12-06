#PhotonAOSP version
export PHOTON_VERSION := $(PLATFORM_VERSION)-$(ROM_VERSION_TAG)-$(shell date -u +%Y%m%d)-$(TARGET_DEVICE)

ROM_VERSION_TAG := ALPHA

PRODUCT_PROPERTY_OVERRIDES += \
    ro.photon.version=$(PHOTON_VERSION)
    ro.photon.buildtype=$(ROM_VERSION_TAG)
	
#OTA
OTA_DATE := $(shell date -u +%Y%m%d)

PHOTON_ROM_NAME := PhotonAOSP
PHOTON_DEVICE_URL := null

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ota.romname=$(TARGET_DEVICE) \
    ro.ota.version=$(OTA_DATE) \
    ro.ota.device=$(TARGET_DEVICE) \
    ro.ota.manifest= null
