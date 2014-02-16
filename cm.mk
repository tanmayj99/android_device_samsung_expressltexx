# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

$(call inherit-product, device/samsung/expressltexx/full_expressltexx.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=expressltexx TARGET_DEVICE=expresslte BUILD_FINGERPRINT="samsung/expressltexx/expresslte:4.1.2/JZO54K/I8730XWAMK1:user/release-keys" PRIVATE_BUILD_DESC="expressltexx-user 4.1.2 JZO54K I8730XWAMK1 release-keys"

PRODUCT_DEVICE := expressltexx
PRODUCT_NAME := cm_expressltexx
