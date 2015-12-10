# Extra packages
PRODUCT_PACKAGES += \
    Launcher3 \
    Apollo \
    MonthCalendarWidget \
    OmniSwitch \
    Terminal \
    Stk

# Busybox
PRODUCT_PACKAGES += \
    Busybox
    
# DSP Manager
ifneq ($(filter photon_hammerhead photon_mako photon_shamu,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    audio_effects.conf \
    DSPManager \
    libcyanogen-dsp \
    
endif

#PhotonOTA
ifneq ($(TARGET_BUILD_PHOTONOTA), true)
PRODUCT_PACKAGES += \
    PhotonOTA
	
endif

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/photon/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon \
    vendor/photon/prebuilt/common/app/SuperSU.apk:system/app/SuperSU/SuperSU.apk
	
# Prebuilt apks
PRODUCT_COPY_FILES +=  \
    vendor/photon/prebuilt/common/app/Layers.apk:system/app/Layers/Layers.apk \
    vendor/photon/prebuilt/common/app/LockClock.apk:system/app/LockClock/LockClock.apk
