# Inherit from d2tmo device
$(call inherit-product, device/samsung/d2tmo/full_d2tmo.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/gsm.mk)
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_d2tmo
PRODUCT_DEVICE := d2tmo
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SGH-T999
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2tmo TARGET_DEVICE=d2tmo BUILD_FINGERPRINT="samsung/d2tmo/d2tmo:4.1.1/JRO03L/T999UVDLJA:user/release-keys" PRIVATE_BUILD_DESC="d2tmo-user 4.1.1 JRO03L T999UVDLJA release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := cito
PRODUCT_VERSION_DEVICE_SPECIFIC := p1

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your T-Mobile Galaxy S II\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip


