#PhotonAOSP version
export PHOTON_VERSION := $(PLATFORM_VERSION)-$(ROM_VERSION_TAG)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.photon.version=$(PHOTON_VERSION)
    ro.photon.buildtype=$(ROM_VERSION_TAG)
	
#Tags
ROM_VERSION_TAG := ALPHA
