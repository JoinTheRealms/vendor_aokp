#
# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit from our custom product configuration
$(call inherit-product, vendor/aokp/configs/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p880/p880.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := Optimus 4X HD
#PRODUCT_VERSION_DEVICE_SPECIFIC :=

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p880
PRODUCT_NAME := aokp_p880
PRODUCT_BRAND := LG
PRODUCT_MODEL := LG-P880
PRODUCT_MANUFACTURER := LGE

# Kernel inline build
TARGET_KERNEL_CONFIG := cyanogenmod_x3_defconfig
TARGET_VARIANT_CONFIG := cyanogenmod_x3_defconfig
TARGET_SELINUX_CONFIG := cyanogenmod_x3_defconfig

$(call inherit-product-if-exists, vendor/lge/p880/p880-vendor.mk)
