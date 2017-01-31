# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.target=dpm1 \
    persist.radio.multisim.config=dsds \
    ro.config.always_show_roaming=true \
    rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
    ril.ecclist=000,08,100,101,102,110,112,118,119,120,122,911,999 \
    ro.telephony.default_network=9,1 \
    service.qti.ims.enabled=1 \
persist.volte_enalbed_by_hw=1 \
net.lte.volte_call_capable=true \
persist.ims.volte=true \
persist.radio.jbims=0 \
persist.radio.imsregrequired=1 \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.radio.ROTATION_ENABLE=1 \
persist.radio.VT_ENABLE=1 \
persist.radio.VT_HYBRID_ENABLE=1 \
persist.radio.VT_USE_MDM_TIME=0 \
persist.radio.calls.on.ims=true \
DEVICE_PROVISIONED=1

# RIL
ifeq ($(QCPATH),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(LOCAL_PATH)/configs/data/dsi_config.xml:system/etc/data/dsi_config.xml
endif
