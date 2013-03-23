# Copyright (C) 2011 The Android Open Source Project
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

# This file includes all definitions that apply only to toro devices
#
# Anything that is generic to all tuna products should go in the tuna directory
#
# Everything in this directory will become public

DEVICE_PACKAGE_OVERLAYS := device/samsung/toro/overlay

PRODUCT_COPY_FILES += \
	device/samsung/toro/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
	device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml \
	frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.vc_call_vol_steps=7 \
	ro.cdma.home.operator.numeric=310004 \
	ro.cdma.home.operator.alpha=Verizon \
	ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
	ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
	ro.cdma.otaspnumschema=SELC,1,80,99 \
        windowsmgr.max_events_per_sec=500 \
        ro.kernel.android.checkjni=0 \
        ro.media.enc.jpeg.quality=100 \
        ro.config.nocheckin=1 \
        debug.performance.tuning=1 \
        persist.service.swiqi.enable=1 \
        video.accelerate.hw=1 \
        ro.ril.enable.3g.prefix=1 \
        ro.ril.hep=1 \
        ro.ril.hsxpa=3 \
        ro.ril.enable.dtm=1 \
        ro.ril.gprsclass=12 \
        ro.ril.hsdpa.category=8 \
        ro.ril.enable.a53=1 \
        ro.ril.hsupa.category=5 \
        persist.sys.purgeable_assets=1 \
        pm.sleep_mode=1 \
        ro.home_app_adj=1 \
        ro.ext4fs=1 \
        persist.sys.use_dithering=0 \
        ro.ril.disable.power.collapse=0 \
        dalvik.vm.heapstartsize=128m \
        dalvik.vm.heapgrowthlimit=320m \
        dalvik.vm.heapsize=512m \
        dalvik.vm.execution-mode=int:jit \
        dalvik.vm.heaputilization=0.05 \
        dalvik.vm.heapidealfree=8388608 \
        dalvik.vm.heapconcurrentstart=2097152 \
        dalvik.vm.verify-bytecode=false \
        ro.dalvik.vm.checkjni=0 \
        dalvik.vm.dexopt-flags=v=n,o=v \
        debug.composition.type=gpu \
        ro.max.fling_velocity=15000 \
        ro.min.fling_velocity=8000 \
        ro.config.hw_fast_dormancy=1 \
        net.dns1=8.8.4.4 \
        net.dns2=8.8.8.8 \
        ro.semc.sound_effects_enabled=true \
        ro.semc.xloud.supported=true \
        htc.audio.alc.enable=1 \
        htc.audio.swalt.enable=1 \
        htc.audio.swalt.mingain=14512 \
        persist.service.xloud.enable=1 \
        persist.service.enhance.enable=1 \
        ro.semc.clearaudio.supported=true \
        persist.service.clearaudio.enable=1 \
        ro.sony.walkman.logger=1 \
        ro.somc.clearphase.supported=true \
        persist.service.clearphase.enable=1 

$(call inherit-product, device/samsung/tuna/device.mk)
$(call inherit-product-if-exists, vendor/samsung/toro/device-vendor.mk)
