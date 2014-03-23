# Copyright (C) 2014 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from common msm8930
-include device/samsung/msm8930-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/expressltexx/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/samsung/expressltexx/include

# Assert
TARGET_OTA_ASSERT_DEVICE := expresslte,expressltexx,i8730,GT-I8730

# Kernel
BOARD_KERNEL_CMDLINE         := androidboot.hardware=qcom user_debug=31 zcache
BOARD_KERNEL_BASE            := 0x80200000
BOARD_MKBOOTIMG_ARGS         := --ramdisk_offset 0x02000000
BOARD_KERNEL_PAGESIZE        := 2048
TARGET_KERNEL_SOURCE         := kernel/samsung/expressltexx
TARGET_KERNEL_CONFIG         := szezso_defconfig
ifeq ($(HAVE_SELINUX),true)
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
endif

TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/expressltexx/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/expressltexx/recovery/recovery_keys.c
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_FSTAB := device/samsung/expressltexx/recovery.fstab
TARGET_RECOVERY_INITRC := device/samsung/expressltexx/rootdir/init.recovery.rc

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1415577600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5079302144
BOARD_CACHEIMAGE_PARTITION_SIZE := 880803840
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/expressltexx/bluetooth

# NFC
BOARD_HAVE_NFC := true
BOARD_NFC_HAL_SUFFIX := msm8960

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# Use seperate speakerphone device
BOARD_USES_SEPERATED_VOICE_SPEAKER := true

# Use seperate devices for VOIP
BOARD_USES_SEPERATED_VOIP := true

# Use USB Dock Audio
BOARD_HAVE_DOCK_USBAUDIO := true

# Use QCOM_BSP
TARGET_USES_QCOM_BSP := true
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# We provide our own camera HAL
TARGET_PROVIDES_CAMERA_HAL := true
USE_CAMERA_STUB := true
