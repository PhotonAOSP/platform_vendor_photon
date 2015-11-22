# Common overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/photon/overlay/common

# Init.d script support
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/common/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/photon/prebuilt/common/addon.d/50-photon.sh:system/addon.d/50-photon.sh \
    vendor/photon/prebuilt/common/addon.d/99-backup.sh:system/addon.d/99-backup.sh \
    vendor/photon/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/photon/prebuilt/common/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/photon/prebuilt/common/etc/backup.conf:system/etc/backup.conf

# Security Enhanced Linux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

