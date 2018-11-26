#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, vendor/xiaomi/mido/mido-vendor.mk)

# Inherit from msm8953-common
$(call inherit-product, device/xiaomi/msm8953-common/msm8953.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation zip
PRODUCT_COPY_FILES += \
			device/xiaomi/mido/bootanimation.zip:system/media/bootanimation.zip

# Updater
PRODUCT_PACKAGES += \
    Updater

# Audio configuration
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/vendor/etc/mixer_paths_mtp.xml \
	$(LOCAL_PATH)/audio/audio_platform_info.xml:system/vendor/etc/audio_platform_info.xml \

# Consumerir
PRODUCT_PACKAGES += \
    consumerir.msm8953 

PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.0-service-custom

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:system/vendor/etc/sensors/sensor_def_qcomdev.conf

# fmo changes
include vendor/fmo/config.mk
