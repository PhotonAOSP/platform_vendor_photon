#PhotonAOSP version
export PHOTON_VERSION := $(PLATFORM_VERSION)-ALPHA-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.photon.version=$(PHOTON_VERSION)
    ro.photon.modtype=ALPHA

