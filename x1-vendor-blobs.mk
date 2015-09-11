# Copyright (C) 2012 The CyanogenMod Project
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

# This file is generated by device/lava/x1/setup-makefiles.sh

PRODUCT_COPY_FILES += \
    vendor/lava/irsx1/proprietary/bin/atrace:system/bin/atrace \
    vendor/lava/irsx1/proprietary/bin/BCM4330B1_002.001.003.1025.1257.hcd:system/bin/BCM4330B1_002.001.003.1025.1257.hcd \
    vendor/lava/irsx1/proprietary/bin/bkmgrd:system/bin/bkmgrd \
    vendor/lava/irsx1/proprietary/bin/glgps:system/bin/glgps \
    vendor/lava/irsx1/proprietary/bin/gps.cer:system/bin/gps.cer \
    vendor/lava/irsx1/proprietary/bin/gpslogd:system/bin/gpslogd \
    vendor/lava/irsx1/proprietary/bin/immvibed:system/bin/immvibed \
    vendor/lava/irsx1/proprietary/bin/macloader:system/bin/macloader \
    vendor/lava/irsx1/proprietary/bin/mttlogger:system/bin/mttlogger \
    vendor/lava/irsx1/proprietary/bin/npsmobex:system/bin/npsmobex \
    vendor/lava/irsx1/proprietary/bin/rild:system/bin/rild \
    vendor/lava/irsx1/proprietary/bin/mfgloader:system/bin/mfgloader \
    vendor/lava/irsx1/proprietary/bin/usb_portd:system/bin/usb_portd \
    vendor/lava/irsx1/proprietary/bin/wlandutservice:system/bin/wlandutservice \
    vendor/lava/irsx1/proprietary/etc/asound.conf:system/etc/asound.conf \
    vendor/lava/irsx1/proprietary/etc/usb_portd.conf:system/etc/usb_portd.conf \
    vendor/lava/irsx1/proprietary/etc/DiamondVoice_Filter_NB.txt:system/etc/DiamondVoice_Filter_NB.txt \
    vendor/lava/irsx1/proprietary/etc/DiamondVoice_Filter_WB.txt:system/etc/DiamondVoice_Filter_WB.txt \
    vendor/lava/irsx1/proprietary/etc/DiamondVoice_NB.txt:system/etc/DiamondVoice_NB.txt \
    vendor/lava/irsx1/proprietary/etc/DiamondVoice_SF_Filter_NB.txt:system/etc/DiamondVoice_SF_Filter_NB.txt \
    vendor/lava/irsx1/proprietary/etc/DiamondVoice_SF_Filter_WB.txt:system/etc/DiamondVoice_SF_Filter_WB.txt \
    vendor/lava/irsx1/proprietary/etc/DiamondVoice_WB.txt:system/etc/DiamondVoice_WB.txt \
    vendor/lava/irsx1/proprietary/etc/gps/glconfig.xml:system/etc/gps/glconfig.xml \
    vendor/lava/irsx1/proprietary/etc/gps.conf:system/etc/gps.conf \
    vendor/lava/irsx1/proprietary/etc/media_profiles.xml:system/etc/media_profiles.xml \
    vendor/lava/irsx1/proprietary/etc/Volume.db:system/etc/Volume.db \
    vendor/lava/irsx1/proprietary/etc/wifi/bcmdhd_apsta.bin:system/etc/wifi/bcmdhd_apsta.bin \
    vendor/lava/irsx1/proprietary/etc/wifi/bcmdhd_sta.bin:system/etc/wifi/bcmdhd_sta.bin \
    vendor/lava/irsx1/proprietary/etc/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    vendor/lava/irsx1/proprietary/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    vendor/lava/irsx1/proprietary/lib/libstagefright_avc_common.so:system/lib/libstagefright_avc_common.so \
    vendor/lava/irsx1/proprietary/lib/hw/alsa.default.so:system/lib/hw/alsa.default.so \
    vendor/lava/irsx1/proprietary/lib/hw/audio.primary.java.so:system/lib/hw/audio.primary.java.so \
    vendor/lava/irsx1/proprietary/lib/hw/audio.usb.java.so:system/lib/hw/audio.usb.java.so \
    vendor/lava/irsx1/proprietary/lib/hw/gps.java.so:system/lib/hw/gps.java.so \
    vendor/lava/irsx1/proprietary/lib/hw/sensors.java.so:system/lib/hw/sensors.java.so \
    vendor/lava/irsx1/proprietary/lib/libasound.so:system/lib/libasound.so \
    vendor/lava/irsx1/proprietary/lib/libsavscmn.so:system/lib/libsavscmn.so \
    vendor/lava/irsx1/proprietary/lib/lib_Samsung_Resampler.so:system/lib/lib_Samsung_Resampler.so \
    vendor/lava/irsx1/proprietary/lib/lib_Samsung_SB_AM_for_ICS_v03008.so:system/lib/lib_Samsung_SB_AM_for_ICS_v03008.so \
    vendor/lava/irsx1/proprietary/lib/lib_SamsungRec_V03011b.so:system/lib/lib_SamsungRec_V03011b.so \
    vendor/lava/irsx1/proprietary/lib/lib_SoundAlive_V01013q.so:system/lib/lib_SoundAlive_V01013q.so \
    vendor/lava/irsx1/proprietary/lib/libat.so:system/lib/libat.so \
    vendor/lava/irsx1/proprietary/lib/libatparser.so:system/lib/libatparser.so \
    vendor/lava/irsx1/proprietary/lib/libomission_avoidance.so:system/lib/libomission_avoidance.so \
    vendor/lava/irsx1/proprietary/lib/libfactoryutil.so:system/lib/libfactoryutil.so \
    vendor/lava/irsx1/proprietary/lib/libbralloc.so:system/lib/libbralloc.so \
    vendor/lava/irsx1/proprietary/lib/libuip.so:system/lib/libuip.so \
    vendor/lava/irsx1/proprietary/lib/libat_stubs.so:system/lib/libat_stubs.so \
    vendor/lava/irsx1/proprietary/lib/libatlog.so:system/lib/libatlog.so \
    vendor/lava/irsx1/proprietary/lib/libbrcm_ril.so:system/lib/libbrcm_ril.so \
    vendor/lava/irsx1/proprietary/lib/libbrcmcutils.so:system/lib/libbrcmcutils.so \
    vendor/lava/irsx1/proprietary/lib/libbrcmparser.so:system/lib/libbrcmparser.so \
    vendor/lava/irsx1/proprietary/lib/libcapi2.so:system/lib/libcapi2.so \
    vendor/lava/irsx1/proprietary/lib/libcontainers.so:system/lib/libcontainers.so \
    vendor/lava/irsx1/proprietary/lib/libImmVibeJ.so:system/lib/libImmVibeJ.so \
    vendor/lava/irsx1/proprietary/lib/libril.so:system/lib/libril.so \
    vendor/lava/irsx1/proprietary/lib/librpc.so:system/lib/librpc.so \
    vendor/lava/irsx1/proprietary/lib/libsamsungRecord.so:system/lib/libsamsungRecord.so \
    vendor/lava/irsx1/proprietary/lib/libsamsungSoundbooster.so:system/lib/libsamsungSoundbooster.so \
    vendor/lava/irsx1/proprietary/lib/libsecnativefeature.so:system/lib/libsecnativefeature.so \
    vendor/lava/irsx1/proprietary/lib/libsecril-client.so:system/lib/libsecril-client.so \
    vendor/lava/irsx1/proprietary/lib/libsmte.so:system/lib/libsmte.so \
    vendor/lava/irsx1/proprietary/lib/libsoc.so:system/lib/libsoc.so \
    vendor/lava/irsx1/proprietary/lib/libsoundalive.so:system/lib/libsoundalive.so \
    vendor/lava/irsx1/proprietary/lib/libSoundAlive_VSP_ver315b_arm.so:system/lib/libSoundAlive_VSP_ver315b_arm.so \
    vendor/lava/irsx1/proprietary/lib/libsoundspeed.so:system/lib/libsoundspeed.so \
    vendor/lava/irsx1/proprietary/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so \
    vendor/lava/irsx1/proprietary/lib/libjpeg_turbo.so:system/lib/libjpeg_turbo.so \
    vendor/lava/irsx1/proprietary/lib/libaudiopolicy_sec.so:system/lib/libaudiopolicy_sec.so \
    vendor/lava/irsx1/proprietary/lib/libsthmb.so:system/lib/libsthmb.so \
    vendor/lava/irsx1/proprietary/lib/libuecodec.so:system/lib/libuecodec.so \
    vendor/lava/irsx1/proprietary/lib/libusb_config.so:system/lib/libusb_config.so \
    vendor/lava/irsx1/proprietary/lib/libVCOS.so:system/lib/libVCOS.so \
    vendor/lava/irsx1/proprietary/lib/libwvdrm_L3.so:system/lib/libwvdrm_L3.so \
    vendor/lava/irsx1/proprietary/lib/libwvm.so:system/lib/libwvm.so \
    vendor/lava/irsx1/proprietary/lib/libVCE_csl.so:system/lib/libVCE_csl.so \
    vendor/lava/irsx1/proprietary/lib/libVCE_driver.so:system/lib/libVCE_driver.so \
    vendor/lava/irsx1/proprietary/lib/libVCE_imageconv.so:system/lib/libVCE_imageconv.so \
    vendor/lava/irsx1/proprietary/lib/libVCE_vtq.so:system/lib/libVCE_vtq.so \
    vendor/lava/irsx1/proprietary/lib/libWVStreamControlAPI_L3.so:system/lib/libWVStreamControlAPI_L3.so \
    vendor/lava/irsx1/proprietary/lib/libBrcmOMX_Core.so:system/lib/libBrcmOMX_Core.so \
    vendor/lava/irsx1/proprietary/lib/libBrcmOMX_Component.so:system/lib/libBrcmOMX_Component.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.vc1.hw.decoder.so:system/lib/libOMX.brcm.video.vc1.hw.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libsavsvc.so:system/lib/libsavsvc.so \
    vendor/lava/irsx1/proprietary/lib/libvcdecoder_jni.so:system/lib/libvcdecoder_jni.so \
    vendor/lava/irsx1/proprietary/lib/modules/VoiceSolution.ko:system/lib/modules/VoiceSolution.ko \
    vendor/lava/irsx1/proprietary/lib/libkeystore_client.so:system/lib/libkeystore_client.so \
    vendor/lava/irsx1/proprietary/lib/libnewcapi2.so:system/lib/libnewcapi2.so \
    vendor/lava/irsx1/proprietary/lib/libsamsungRecord_ns.so:system/lib/libsamsungRecord_ns.so \
    vendor/lava/irsx1/proprietary/lib/lib_DNSe_NRSS_ver225.so:system/lib/lib_DNSe_NRSS_ver225.so \
    vendor/lava/irsx1/proprietary/lib/libcontrolcsc.so:system/lib/libcontrolcsc.so \
    vendor/lava/irsx1/proprietary/lib/libISP.so:system/lib/libISP.so \
    vendor/lava/irsx1/proprietary/lib/libisp2.so:system/lib/libisp2.so \
    vendor/lava/irsx1/proprietary/lib/libacdapi_azi.so:system/lib/libacdapi_azi.so \
    vendor/lava/irsx1/proprietary/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
    vendor/lava/irsx1/proprietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
    vendor/lava/irsx1/proprietary/lib/egl/libGLES_java.so:system/lib/egl/libGLES_java.so \
    vendor/lava/irsx1/proprietary/usr/lib/alsa-lib/libasound_module_pcm_bcmfilter.so:system/usr/lib/alsa-lib/libasound_module_pcm_bcmfilter.so \
    vendor/lava/irsx1/proprietary/usr/lib/alsa-lib/libbcm_hp_filter.so:system/usr/lib/alsa-lib/libbcm_hp_filter.so \
    vendor/lava/irsx1/proprietary/usr/lib/alsa-lib/libbcm_test_filter.so:system/usr/lib/alsa-lib/libbcm_test_filter.so \
    vendor/lava/irsx1/proprietary/usr/share/alsa/alsa.conf:system/usr/share/alsa/alsa.conf \
    vendor/lava/irsx1/proprietary/lib/hw/camera.java.so:system/lib/hw/camera.java.so \
    vendor/lava/irsx1/proprietary/lib/hw/gralloc.java.so:system/lib/hw/gralloc.java.so \
    vendor/lava/irsx1/proprietary/lib/hw/hwcomposer.java.so:system/lib/hw/hwcomposer.java.so \
    vendor/lava/irsx1/proprietary/vendor/lib/hw/lights.java.so:system/vendor/lib/hw/lights.java.so \
    vendor/lava/irsx1/proprietary/vendor/lib/hw/power.java.so:system/vendor/lib/hw/power.java.so \
    vendor/lava/irsx1/proprietary/lib/drm/libdrmwvmplugin.so:system/lib/drm/libdrmwvmplugin.so \
    vendor/lava/irsx1/proprietary/lib/drm/libomaplugin.so:system/lib/drm/libomaplugin.so \
    vendor/lava/irsx1/proprietary/lib/drm/libplayreadyplugin.so:system/lib/drm/libplayreadyplugin.so \
    vendor/lava/irsx1/proprietary/lib/hw/acoustics.default.so:system/lib/hw/acoustics.default.so \
    vendor/lava/irsx1/proprietary/lib/hw/bplus.default.so:system/lib/hw/bplus.default.so \
    vendor/lava/irsx1/proprietary/lib/hw/camera.goldfish.so:system/lib/hw/camera.goldfish.so \
    vendor/lava/irsx1/proprietary/lib/hw/gps.goldfish.so:system/lib/hw/gps.goldfish.so \
    vendor/lava/irsx1/proprietary/lib/hw/lights.goldfish.so:system/lib/hw/lights.goldfish.so \
    vendor/lava/irsx1/proprietary/lib/hw/power.goldfish.so:system/lib/hw/power.goldfish.so \
    vendor/lava/irsx1/proprietary/lib/hw/sensors.goldfish.so:system/lib/hw/sensors.goldfish.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.aac.decoder.so:system/lib/libOMX.brcm.audio.aac.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.aac.encoder.so:system/lib/libOMX.brcm.audio.aac.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.amrnb.decoder.so:system/lib/libOMX.brcm.audio.amrnb.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.amrnb.encoder.so:system/lib/libOMX.brcm.audio.amrnb.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.amrwb.decoder.so:system/lib/libOMX.brcm.audio.amrwb.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.amrwb.encoder.so:system/lib/libOMX.brcm.audio.amrwb.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.mp3.decoder.so:system/lib/libOMX.brcm.audio.mp3.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.mp3.encoder.so:system/lib/libOMX.brcm.audio.mp3.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.audio.wma.decoder.so:system/lib/libOMX.brcm.audio.wma.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.dummy.decoder.so:system/lib/libOMX.brcm.video.dummy.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.dummy.encoder.so:system/lib/libOMX.brcm.video.dummy.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.h263.decoder.so:system/lib/libOMX.brcm.video.h263.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.h263.encoder.so:system/lib/libOMX.brcm.video.h263.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.h264.async.hw.encoder.so:system/lib/libOMX.brcm.video.h264.async.hw.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.h264.decoder.so:system/lib/libOMX.brcm.video.h264.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.h264.encoder.so:system/lib/libOMX.brcm.video.h264.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.h264.hw.decoder.so:system/lib/libOMX.brcm.video.h264.hw.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.h264.hw.encoder.so:system/lib/libOMX.brcm.video.h264.hw.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.mpeg4.decoder.so:system/lib/libOMX.brcm.video.mpeg4.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.mpeg4.encoder.so:system/lib/libOMX.brcm.video.mpeg4.encoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.mpeg4.hw.decoder.so:system/lib/libOMX.brcm.video.mpeg4.hw.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libOMX.brcm.video.vpx.decoder.so:system/lib/libOMX.brcm.video.vpx.decoder.so \
    vendor/lava/irsx1/proprietary/lib/libV3D_csc.so:system/lib/libV3D_csc.so \
    vendor/lava/irsx1/proprietary/lib/libV3D_driver.so:system/lib/libV3D_driver.so \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/btoff:system//vendor/bin/atx_test/btoff \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/bton:system//vendor/bin/atx_test/bton \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/changePW:system//vendor/bin/atx_test/changePW \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/gps:system//vendor/bin/atx_test/gps \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/pws:system//vendor/bin/atx_test/pws \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/rx:system//vendor/bin/atx_test/rx \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/rxcounter:system//vendor/bin/atx_test/rxcounter \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/singletx:system//vendor/bin/atx_test/singletx \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/tx:system//vendor/bin/atx_test/tx \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/tx_a:system//vendor/bin/atx_test/tx_a \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/tx_n:system//vendor/bin/atx_test/tx_n \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/wifioff:system//vendor/bin/atx_test/wifioff \
    vendor/lava/irsx1/proprietary//vendor/bin/atx_test/wifion:system//vendor/bin/atx_test/wifion \
    vendor/lava/irsx1/proprietary//vendor/firmware/BCM4330B1_002.001.003.0750.0878.hcd:system//vendor/firmware/BCM4330B1_002.001.003.0750.0878.hcd \
    vendor/lava/irsx1/proprietary//vendor/firmware/fw_mfgtest_4330.bin:system//vendor/firmware/fw_mfgtest_4330.bin \
    vendor/lava/irsx1/proprietary//vendor/firmware/fw_wifi_4330.bin:system//vendor/firmware/fw_wifi_4330.bin \
    vendor/lava/irsx1/proprietary//vendor/firmware/fw_wifi_apsta_4330.bin:system//vendor/firmware/fw_wifi_apsta_4330.bin \
    vendor/lava/irsx1/proprietary//vendor/firmware/fw_wifi_nvram_4330.txt:system//vendor/firmware/fw_wifi_nvram_4330.txt \
    vendor/lava/irsx1/proprietary//vendor/firmware/fw_wifi_p2p_4330.bin:system//vendor/firmware/fw_wifi_p2p_4330.bin \
    vendor/lava/irsx1/proprietary//vendor/firmware/wl_4330:system//vendor/firmware/wl_4330 \
    vendor/lava/irsx1/proprietary//vendor/lib/drm/libdrmwvmplugin.so:system//vendor/lib/drm/libdrmwvmplugin.so \
    vendor/lava/irsx1/proprietary//vendor/lib/filelist.txt:system//vendor/lib/filelist.txt \
    vendor/lava/irsx1/proprietary//vendor/lib/libbt-vendor.so:system//vendor/lib/libbt-vendor.so \
    vendor/lava/irsx1/proprietary//vendor/lib/libwvdrm_L3.so:system//vendor/lib/libwvdrm_L3.so \
    vendor/lava/irsx1/proprietary//vendor/lib/libwvm.so:system//vendor/lib/libwvm.so \
    vendor/lava/x1/proprietary//vendor/lib/libWVStreamControlAPI_L3.so:system//vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/lava/x1/proprietary//vendor/media/LMspeed_508.emd:system//vendor/media/LMspeed_508.emd \
    vendor/lava/x1/proprietary//vendor/media/PFFprec_600.emd:system//vendor/media/PFFprec_600.emd \
    vendor/lava/x1/proprietary//vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors7./left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32.bin:system//vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors7./left_eye-y0-yi45-p0-pi45-r0-ri20.lg_32.bin \
    vendor/lava/x1/proprietary//vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32.bin:system//vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/nose_base-y0-yi45-p0-pi45-r0-ri20.lg_32.bin \
    vendor/lava/x1/proprietary//vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2.bin:system//vendor/pittpatt/models/detection/multi_pose_face_landmark_detectors.7/right_eye-y0-yi45-p0-pi45-r0-ri20.lg_32-2.bin \
    vendor/lava/x1/proprietary//vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24.bin:system//vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-r0-ri30.4a-v24.bin \
    vendor/lava/x1/proprietary//vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24.bin:system//vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rn30-ri30.5-v24.bin \
    vendor/lava/x1/proprietary//vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24.bin:system//vendor/pittpatt/models/detection/yaw_roll_face_detectors.6/head-y0-yi45-p0-pi45-rp30-ri30.5-v24.bin \
    vendor/lava/x1/proprietary//vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N.bin:system//vendor/pittpatt/models/recognition/face.face.y0-y0-22-b-N.bin \
    vendor/lava/x1/proprietary//etc/bluetooth/auto_pair_devlist.conf:system//etc/bluetooth/auto_pair_devlist.conf \
    vendor/lava/x1/proprietary//etc/bluetooth/bt_did.conf:system//etc/bluetooth/bt_did.conf \
    vendor/lava/x1/proprietary//etc/bluetooth/bt_stack.conf:system//etc/bluetooth/bt_stack.conf \
    vendor/lava/x1/proprietary//etc/bluetooth/bt_vendor.conf:system//etc/bluetooth/bt_vendor.conf \
    vendor/lava/x1/proprietary//etc/gps/glconfig.xml:system//etc/gps/glconfig.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.bluetooth_le.xml:system//etc/permissions/android.hardware.bluetooth_le.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.camera.flash-autofocus.xml:system//etc/permissions/android.hardware.camera.flash-autofocus.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.camera.front.xml:system//etc/permissions/android.hardware.camera.front.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.location.gps.xml:system//etc/permissions/android.hardware.location.gps.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.sensor.barometer.xml:system//etc/permissions/android.hardware.sensor.barometer.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.sensor.gyroscope.xml:system//etc/permissions/android.hardware.sensor.gyroscope.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.sensor.light.xml:system//etc/permissions/android.hardware.sensor.light.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.sensor.proximity.xml:system//etc/permissions/android.hardware.sensor.proximity.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.telephony.gsm.xml:system//etc/permissions/android.hardware.telephony.gsm.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml:system//etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.usb.accessory.xml:system//etc/permissions/android.hardware.usb.accessory.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.usb.host.xml:system//etc/permissions/android.hardware.usb.host.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.wifi.direct.xml:system//etc/permissions/android.hardware.wifi.direct.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.hardware.wifi.xml:system//etc/permissions/android.hardware.wifi.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.software.live_wallpaper.xml:system//etc/permissions/android.software.live_wallpaper.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.software.sip.voip.xml:system//etc/permissions/android.software.sip.voip.xml \
    vendor/lava/x1/proprietary//etc/permissions/android.software.sip.xml:system//etc/permissions/android.software.sip.xml \
    vendor/lava/x1/proprietary//etc/permissions/com.android.location.provider.xml:system//etc/permissions/com.android.location.provider.xml \
    vendor/lava/x1/proprietary//etc/permissions/com.android.media.remotedisplay.xml:system//etc/permissions/com.android.media.remotedisplay.xml \
    vendor/lava/x1/proprietary//etc/permissions/com.broadcom.bt.xml:system//etc/permissions/com.broadcom.bt.xml \
    vendor/lava/x1/proprietary//etc/permissions/com.google.android.maps.xml:system//etc/permissions/com.google.android.maps.xml \
    vendor/lava/x1/proprietary//etc/permissions/com.google.android.media.effects.xml:system//etc/permissions/com.google.android.media.effects.xml \
    vendor/lava/x1/proprietary//etc/permissions/com.google.widevine.software.drm.xml:system//etc/permissions/com.google.widevine.software.drm.xml \
    vendor/lava/x1/proprietary//etc/permissions/handheld_core_hardware.xml:system//etc/permissions/handheld_core_hardware.xml \
    vendor/lava/x1/proprietary//etc/permissions/platform.xml:system//etc/permissions/platform.xml \
    vendor/lava/x1/proprietary//etc/wifi/wpa_supplicant.conf:system//etc/wifi/wpa_supplicant.conf \
    vendor/lava/x1/proprietary//etc/asound.conf:system//etc/asound.conf \
    vendor/lava/x1/proprietary//etc/atx_rndis.conf:system//etc/atx_rndis.conf \
    vendor/lava/x1/proprietary//etc/audio_effects.conf:system//etc/audio_effects.conf \
    vendor/lava/x1/proprietary//etc/audio_policy.conf:system//etc/audio_policy.conf \
    vendor/lava/x1/proprietary//etc/clatd.conf:system//etc/clatd.conf \
    vendor/lava/x1/proprietary//etc/copy_ap_files.sh:system//etc/copy_ap_files.sh \
    vendor/lava/x1/proprietary//etc/copy_cp_imgs.sh:system//etc/copy_cp_imgs.sh \
    vendor/lava/x1/proprietary//etc/default_mode.sh:system//etc/default_mode.sh \
    vendor/lava/x1/proprietary//etc/dnsmasq.conf:system//etc/dnsmasq.conf \
    vendor/lava/x1/proprietary//etc/gps.conf:system//etc/gps.conf \
    vendor/lava/x1/proprietary//etc/hosts:system//etc/hosts \
    vendor/lava/x1/proprietary//etc/init_sensors.sh:system//etc/init_sensors.sh \
    vendor/lava/x1/proprietary//etc/mkshrc:system//etc/mkshrc \
    vendor/lava/x1/proprietary//etc/netconsole.sh:system//etc/netconsole.sh \
    vendor/lava/x1/proprietary//etc/performance_mode.sh:system//etc/performance_mode.sh \
    vendor/lava/x1/proprietary//etc/sdp_charger.sh:system//etc/sdp_charger.sh \
    vendor/lava/x1/proprietary//etc/udhcpd.conf:system//etc/udhcpd.conf \
    vendor/lava/x1/proprietary//etc/udhcpd_ncm.conf:system//etc/udhcpd_ncm.conf \
    vendor/lava/x1/proprietary//etc/usbdev.sh:system//etc/usbdev.sh \
    vendor/lava/x1/proprietary//etc/usb_network.sh:system//etc/usb_network.sh \
    vendor/lava/x1/proprietary//etc/usb_portd.conf:system//etc/usb_portd.conf \
    vendor/lava/x1/proprietary//etc/usb_save.sh:system//etc/usb_save.sh \
    vendor/lava/x1/proprietary//etc/usb_tether.sh:system//etc/usb_tether.sh \
    vendor/lava/x1/proprietary//usr/keychars/Generic.kcm:system//usr/keychars/Generic.kcm \
    vendor/lava/x1/proprietary//usr/keychars/java.kcm:system//usr/keychars/java.kcm \
    vendor/lava/x1/proprietary//usr/keychars/qwerty.kcm:system//usr/keychars/qwerty.kcm \
    vendor/lava/x1/proprietary//usr/keychars/qwerty2.kcm:system//usr/keychars/qwerty2.kcm \
    vendor/lava/x1/proprietary//usr/keychars/Virtual.kcm:system//usr/keychars/Virtual.kcm \
    vendor/lava/x1/proprietary//usr/AVRCP.kl:system//usr/AVRCP.kl \
    vendor/lava/x1/proprietary//usr/Generic.kl:system//usr/Generic.kl \
    vendor/lava/x1/proprietary//usr/java.kl:system//usr/java.kl \
    vendor/lava/x1/proprietary//usr/qwerty.kl:system//usr/qwerty.kl \
    vendor/lava/x1/proprietary//usr/Vendor_0079_Product_0011.kl:system//usr/Vendor_0079_Product_0011.kl \
    vendor/lava/x1/proprietary//usr/Vendor_045e_Product_028e.kl:system//usr/Vendor_045e_Product_028e.kl \
    vendor/lava/x1/proprietary//usr/Vendor_046d_Product_c216.kl:system//usr/Vendor_046d_Product_c216.kl \
    vendor/lava/x1/proprietary//usr/Vendor_046d_Product_c219.kl:system//usr/Vendor_046d_Product_c219.kl \
    vendor/lava/x1/proprietary//usr/Vendor_046d_Product_c21f.kl:system//usr/Vendor_046d_Product_c21f.kl \
    vendor/lava/x1/proprietary//usr/Vendor_046d_Product_c294.kl:system//usr/Vendor_046d_Product_c294.kl \
    vendor/lava/x1/proprietary//usr/Vendor_046d_Product_c299.kl:system//usr/Vendor_046d_Product_c299.kl \
    vendor/lava/x1/proprietary//usr/Vendor_046d_Product_c532.kl:system//usr/Vendor_046d_Product_c532.kl \
    vendor/lava/x1/proprietary//usr/Vendor_054c_Product_0268.kl:system//usr/Vendor_054c_Product_0268.kl \
    vendor/lava/x1/proprietary//usr/Vendor_0583_Product_2060.kl:system//usr/Vendor_0583_Product_2060.kl \
    vendor/lava/x1/proprietary//usr/Vendor_05ac_Product_0239.kl:system//usr/Vendor_05ac_Product_0239.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1038_Product_1412.kl:system//usr/Vendor_1038_Product_1412.kl \
    vendor/lava/x1/proprietary//usr/Vendor_12bd_Product_d015.kl:system//usr/Vendor_12bd_Product_d015.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1689_Product_fd00.kl:system//usr/Vendor_1689_Product_fd00.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1689_Product_fd01.kl:system//usr/Vendor_1689_Product_fd01.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1689_Product_fe00.kl:system//usr/Vendor_1689_Product_fe00.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1bad_Product_f016.kl:system//usr/Vendor_1bad_Product_f016.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1bad_Product_f023.kl:system//usr/Vendor_1bad_Product_f023.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1bad_Product_f027.kl:system//usr/Vendor_1bad_Product_f027.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1bad_Product_f036.kl:system//usr/Vendor_1bad_Product_f036.kl \
    vendor/lava/x1/proprietary//usr/Vendor_1d79_Product_0009.kl:system//usr/Vendor_1d79_Product_0009.kl \
    vendor/lava/x1/proprietary//usr/Vendor_22b8_Product_093d.kl:system//usr/Vendor_22b8_Product_093d.kl \
    vendor/lava/x1/proprietary//usr/Vendor_2378_Product_100a.kl:system//usr/Vendor_2378_Product_100a.kl
