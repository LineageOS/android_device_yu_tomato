#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from msm8916-common
$(call inherit-product, device/cyanogen/msm8916-common/msm8916.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Due to multi-density builds, these are set by init
PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model ro.sf.lcd_density

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

$(call inherit-product-if-exists, vendor/yu/tomato/tomato-vendor.mk)

 PRODUCT_PACKAGES += \
    IMSEnabler
    
PRODUCT_PROPERTY_OVERRIDES += \    
service.qti.ims.enabled=1 \
persist.volte_enalbed_by_hw=1 \
net.lte.volte_call_capable=true \
persist.ims.volte=true \
persist.radio.ROTATION_ENABLE=1 \
persist.radio.VT_ENABLE=1 \
persist.radio.VT_HYBRID_ENABLE=1 \
persist.radio.VT_USE_MDM_TIME=0 \
persist.radio.calls.on.ims=true \
DEVICE_PROVISIONED=1
