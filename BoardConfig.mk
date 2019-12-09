#
# Copyright (C) 2019 The LineageOS Project
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

DEVICE_PATH := device/samsung/a3y17lte

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal7870
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-t830
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos7870

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Binder
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_PHONY_TARGETS := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_LINUX_KERNEL_VERSION := 3.18
TARGET_KERNEL_SOURCE := kernel/samsung/exynos7870
TARGET_KERNEL_CONFIG := exynos7870-a3y17lte_defconfig
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk

# Audio
USE_XML_AUDIO_POLICY_CONF := 1
AUDIOSERVER_MULTILIB := 32
BOARD_USE_TFA_AMP := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_HAS_QCA_BT_ROME := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
TARGET_USES_MEDIA_EXTENSIONS := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_BACK_CAMERA_SENSOR := 0
BOARD_FRONT_CAMERA_SENSOR := 1

# Charger
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging

# Compile libhwui in performance mode
HWUI_COMPILE_FOR_PERF := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Device Tree
BOARD_USES_DT := true

# Dexpreopt
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif

# Display
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_GRALLOC1 := true
TARGET_USES_HWC2 := true
TARGET_USES_OVERLAY := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS :=  0x2000

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/proc/tp_gesture"

# Filesystem
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true

# Fingerprint
TARGET_SEC_FP_HAL_VARIANT := bauth

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true

BOARD_USES_DECON_64BIT_ADDRESS := true

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

# HALs
TARGET_AUDIOHAL_VARIANT := samsung
TARGET_POWERHAL_VARIANT := samsung

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/compatibility_matrix.xml

# HWComposer
BOARD_USES_VPP := true
BOARD_HDMI_INCAPABLE := true

# HWCServices - requires framework support
BOARD_USES_HWC_SERVICES := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# LIBHWJPEG
TARGET_USES_UNIVERSAL_LIBHWJPEG := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Networking
TARGET_NEEDS_NETD_DIRECT_CONNECT_RULE := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2072000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54618209280
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_VENDORIMAGE_PARTITION_SIZE := 446870912
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Ramdisk
BOARD_ROOT_EXTRA_FOLDERS := efs cpefs

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.recovery
TARGET_OTA_ASSERT_DEVICE := a3y17lte

# Release tools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := false
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := false
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := true
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := false
BOARD_USE_VP9ENC_SUPPORT := false
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := true
BOARD_USE_SINGLE_PLANE_IN_DRM := true

# RIL
BOARD_VENDOR := samsung
BOARD_MODEM_TYPE := tss310
BOARD_PROVIDES_LIBRIL := false
ENABLE_VENDOR_RIL_SERVICE := true

# SCALER
BOARD_USES_DEFAULT_CSC_HW_SCALER := true
BOARD_USES_SCALER_M2M1SHOT := true
TARGET_OMX_LEGACY_RESCALING := true

# Shims: camera
TARGET_LD_SHIM_LIBS += \
    /vendor/lib/libexynoscamera.so|libexynoscamera_shim.so

# Security patch level
VENDOR_SECURITY_PATCH := 2019-10-05

# Seccomp
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

# SELinux
BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy_minimal
SELINUX_IGNORE_NEVERALLOWS := true

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
BOARD_VNDK_VERSION := current

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_P2P := "p2p"
WPA_SUPPLICANT_VERSION := VER_0_8_X
WPA_SUPPLICANT_USE_HIDL := true

# Wifi loader
BOARD_HAVE_SAMSUNG_WIFI := true

# Inherit from the proprietary version
-include vendor/samsung/a3y17lte/BoardConfigVendor.mk
