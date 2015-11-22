#PhotonAOSP version
export PHOTON_VERSION := $(PLATFORM_VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.photon.version=$(PHOTON_VERSION)
	
PRODUCT_PROPERTY_OVERRIDES += \
    ro.photon.modtype="BETA"

