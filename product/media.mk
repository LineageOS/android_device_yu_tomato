# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Widevine DRM symbol, boringssl-compat subset
PRODUCT_PACKAGES += \
    libshim_boringssl
