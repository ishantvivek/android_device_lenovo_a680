# Get all languages available
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/lenovo/a680/a680-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/lenovo/a680/overlay

# Use high-density artwork where available; our device (A680) supports hdpi
PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi nodpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += hdpi


LOCAL_PATH := device/lenovo/a680

# Files
# Init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.mt6582.rc:root/init.mt6582.rc \
    $(LOCAL_PATH)/recovery/fstab:root/fstab \
    $(LOCAL_PATH)/rootdir/init.mt6582.usb.rc:root/init.mt6582.usb.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6582.rc:root/ueventd.mt6582.rc \
    $(LOCAL_PATH)/rootdir/fstab.mt6582:root/fstab.mt6582 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.protect.rc:root/init.protect.rc

# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/recovery.fstab:recovery/root/etc/recovery.fstab

# Vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab


# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf 


# These are the hardware-specific features
PRODUCT_COPY_FILES += \
        device/lenovo/a680/configs/android.hardware.microphone.xml:system/etc/permissions/android.hardware.microphone.xml \
	device/lenovo/a680/configs/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml 



# audio
PRODUCT_PACKAGES += \
    audio.r_submix.default
PRODUCT_PACKAGES += \
    audio.primary.mt6582
PRODUCT_PACKAGES += \
    audio_policy.default

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

# Default Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.allow.mock.location=0 \
    ro.debuggable=0 \
    persist.sys.usb.config=mtp

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.


#product property of a680
PRODUCT_PROPERTY_OVERRIDES := \
ro.mediatek.version.release=ALPS.JB5.MP.V1.5 \
	ro.mediatek.platform=MT6582 \
	ro.mediatek.chip_ver=S01 \
ro.mediatek.version.branch=ALPS.JB5.MP \
	ro.mediatek.version.sdk=1 \
	ro.telephony.sim.count=2 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	persist.sys.usb.config=mtp,adb \
	persist.service.adb.enable=1 \
	persist.service.debuggable=1 \
	persist.mtk.wcn.combo.chipid=-1
  dalvik.vm.heapstartsize=8m
  dalvik.vm.heapgrowthlimit=64m
  dalvik.vm.heapsize=256m
PRODUCT_NAME := full_a680
PRODUCT_DEVICE := a680

# Use the Dalvik VM specific for devices with 1024 MB of RAM
include frameworks/native/build/phone-hdpi-1024-dalvik-heap.mk

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
