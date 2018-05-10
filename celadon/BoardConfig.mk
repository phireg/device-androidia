# ----------------- BEGIN MIX-IN DEFINITIONS -----------------
# Mix-In definitions are auto-generated by mixin-update
##############################################################
# Source: device/intel/mixins/groups/2ndstage/oemvars/BoardConfig.mk
##############################################################
TARGET_BOOTLOADER_IS_2ND := true
BOARD_OEM_VARS += $(TARGET_DEVICE_DIR)/oemvars.txt
##############################################################
# Source: device/intel/mixins/groups/project-celadon/default/BoardConfig.mk
##############################################################
KERNEL_CROSS_COMPILE_WRAPPER := x86_64-linux-android-
##############################################################
# Source: device/intel/mixins/groups/sepolicy/enforcing/BoardConfig.mk
##############################################################
# SELinux Policy
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy

# Pass device target to build
BOARD_SEPOLICY_M4DEFS += board_sepolicy_target_product=$(TARGET_PRODUCT)
##############################################################
# Source: device/intel/mixins/groups/graphics/project-celadon/BoardConfig.mk
##############################################################
BOARD_KERNEL_CMDLINE += vga=current i915.modeset=1 drm.atomic=1 i915.nuclear_pageflip=1 drm.vblankoffdelay=1 i915.fastboot=1
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_INTEL_UFO_DRIVER := false
INTEL_VA := true
BOARD_GRAPHIC_IS_GEN := true
BOARD_GPU_DRIVERS := i965
BOARD_USE_MESA := true
LIBDRM_VER := intel

# System's VSYNC phase offsets in nanoseconds
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

BOARD_GPU_DRIVERS ?= i965 swrast
ifneq ($(strip $(BOARD_GPU_DRIVERS)),)
TARGET_HARDWARE_3D := true
endif

BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/graphics/project-celadon


BOARD_USES_DRM_HWCOMPOSER := false
BOARD_USES_IA_HWCOMPOSER := true

DISABLE_MEDIA_COMPOSITOR := true

BOARD_USES_MINIGBM := true
BOARD_ENABLE_EXPLICIT_SYNC := true
INTEL_MINIGBM := external/minigbm


BOARD_USES_GRALLOC1 := true


TARGET_USES_HWC2 := true

##############################################################
# Source: device/intel/mixins/groups/media/project-celadon/BoardConfig.mk
##############################################################
##############################################################
# Source: device/intel/mixins/groups/device-type/tablet/BoardConfig.mk
##############################################################
DEVICE_PACKAGE_OVERLAYS += device/intel/common/device-type/overlay-tablet
##############################################################
# Source: device/intel/mixins/groups/debugfs/default/BoardConfig.mk
##############################################################
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/debugfs
##############################################################
# Source: device/intel/mixins/groups/slot-ab/true/BoardConfig.mk
##############################################################
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS := \
    boot \
    system
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_SLOT_AB_ENABLE := true
##############################################################
# Source: device/intel/mixins/groups/kernel/project-celadon/BoardConfig.mk
##############################################################
TARGET_USES_64_BIT_BINDER := true
BOARD_USE_64BIT_USERSPACE := true
TARGET_SUPPORTS_64_BIT_APPS := true


TARGET_PRELINK_MODULE := false
TARGET_NO_KERNEL ?= false

KERNEL_LOGLEVEL ?= 3
SERIAL_PARAMETER := console=tty0 console=ttyS2,115200n8


BOARD_KERNEL_CMDLINE += androidboot.hardware=$(TARGET_PRODUCT) firmware_class.path=/vendor/firmware loglevel=$(KERNEL_LOGLEVEL)

ifneq ($(TARGET_BUILD_VARIANT),user)
ifeq ($(SPARSE_IMG),true)
BOARD_KERNEL_CMDLINE += $(SERIAL_PARAMETER)
endif
endif


BOARD_SEPOLICY_M4DEFS += module_kernel=true
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/kernel
##############################################################
# Source: device/intel/mixins/groups/bluetooth/btusb/BoardConfig.mk
##############################################################
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_LINUX := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/intel/common/bluetooth/bcm43241/
DEVICE_PACKAGE_OVERLAYS += device/intel/common/bluetooth/overlay-bt-pan
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/bluetooth/common \
                       device/intel/project-celadon/sepolicy/bluetooth/intel
##############################################################
# Source: device/intel/mixins/groups/disk-bus/auto/BoardConfig.mk
##############################################################
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/set_storage
##############################################################
# Source: device/intel/mixins/groups/factory-partition/true/BoardConfig.mk
##############################################################
BOARD_FACTORYIMAGE_PARTITION_SIZE := 10485760
BOARD_FLASHFILES += $(PRODUCT_OUT)/factory.img
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/factory-partition
BOARD_SEPOLICY_M4DEFS += module_factory_partition=true
##############################################################
# Source: device/intel/mixins/groups/config-partition/enabled/BoardConfig.mk
##############################################################
BOARD_CONFIGIMAGE_PARTITION_SIZE := 8388608
BOARD_FLASHFILES += $(PRODUCT_OUT)/config.img
BOARD_SEPOLICY_M4DEFS += module_config_partition=true
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/config-partition
##############################################################
# Source: device/intel/mixins/groups/avb/true/BoardConfig.mk
##############################################################
BOARD_AVB_ENABLE := true

KERNELFLINGER_AVB_CMDLINE := true

BOARD_VBMETAIMAGE_PARTITION_SIZE := 2097152
BOARD_FLASHFILES += $(PRODUCT_OUT)/vbmeta.img

# Now use AVB to support A/B slot
PRODUCT_STATIC_BOOT_CONTROL_HAL := bootctrl.avb libavb_user
##############################################################
# Source: device/intel/mixins/groups/vendor-partition/true/BoardConfig.mk
##############################################################
# Those 3 lines are required to enable vendor image generation.
# Remove them if vendor partition is not used.
TARGET_COPY_OUT_VENDOR := vendor
BOARD_VENDORIMAGE_PARTITION_SIZE := 1572864000
ifeq ($(SPARSE_IMG),true)
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
else
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := squashfs
endif
BOARD_FLASHFILES += $(PRODUCT_OUT)/vendor.img
##############################################################
# Source: device/intel/mixins/groups/boot-arch/project-celadon/BoardConfig.mk
##############################################################
#TARGET_NO_RECOVERY ?= false

TARGET_BOARD_PLATFORM := project-celadon

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 576716800
BOARD_FLASH_BLOCK_SIZE := 512

BOARD_BOOTIMAGE_PARTITION_SIZE := 31457280

ifeq ($(SPARSE_IMG),true)
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
else
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := squashfs
endif

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384

BOARD_BOOTLOADER_PARTITION_SIZE ?= 62914560
BOARD_BOOTLOADER_BLOCK_SIZE := 512
TARGET_BOOTLOADER_BOARD_NAME := $(TARGET_DEVICE)

# Kernel Flinger
TARGET_UEFI_ARCH := x86_64
# Kernelflinger won't check the ACPI table oem_id, oem_table_id and
# revision fields
KERNELFLINGER_ALLOW_UNSUPPORTED_ACPI_TABLE := true
# Allow Kernelflinger to start watchdog prior to boot the kernel
KERNELFLINGER_USE_WATCHDOG := true
# Tell Kernelflinger to ignore ACPI RSCI table
KERNELFLINGER_IGNORE_RSCI := true
#KERNELFLINGER_SSL_LIBRARY := boringssl
KERNELFLINGER_SSL_LIBRARY := openssl
# Specify system verity partition
#PRODUCT_SYSTEM_VERITY_PARTITION := /dev/block/by-name/system

# Avoid Watchdog truggered reboot
BOARD_KERNEL_CMDLINE += iTCO_wdt.force_no_reboot=1

BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/boot-arch/project-celadon/$(TARGET_PRODUCT)

# Show the "OEM unlocking" option in Android "Developer options"
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += ro.frp.pst=/dev/block/by-name/android_persistent

# Specify file for creating final flashfiles
# BOARD_GPT_INI ?= $(TARGET_DEVICE_DIR)/gpt.ini
BOARD_GPT_BIN = $(PRODUCT_OUT)/gpt.bin
BOARD_FLASHFILES += $(PRODUCT_OUT)/system.img
BOARD_FLASHFILES += $(PRODUCT_OUT)/gpt.bin
BOARD_FLASHFILES += $(PRODUCT_OUT)/boot.img
BOARD_FLASHFILES += $(PRODUCT_OUT)/efi/installer.efi
BOARD_FLASHFILES += $(PRODUCT_OUT)/efi/kernelflinger.efi
BOARD_FLASHFILES += $(PRODUCT_OUT)/efi/startup.nsh
BOARD_FLASHFILES += $(PRODUCT_OUT)/efi/unlock_device.nsh
BOARD_FLASHFILES += $(PRODUCT_OUT)/efi/efivar_oemlock
BOARD_FLASHFILES += $(PRODUCT_OUT)/efi/installer.cmd
BOARD_FLASHFILES += $(PRODUCT_OUT)/bootloader
BOARD_FLASHFILES += $(PRODUCT_OUT)/fastboot-usb.img
BOARD_FLASHFILES += $(PRODUCT_OUT)/efi/flash.json
BOARD_FLASHFILES += $(PRODUCT_OUT)/tos.img

# -- OTA RELATED DEFINES --
# tell build system where to get the recovery.fstab.
TARGET_RECOVERY_FSTAB ?= $(TARGET_DEVICE_DIR)/fstab
# Used by ota_from_target_files to add platform-specific directives
# to the OTA updater scripts
TARGET_RELEASETOOLS_EXTENSIONS ?= device/intel/common/recovery
# By default recovery minui expects RGBA framebuffer
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"


ifneq (0x0,static)
BOOTLOADER_POLICY_OEMVARS = $(PRODUCT_OUT)/bootloader_policy-oemvars.txt
BOARD_FLASHFILES += $(BOOTLOADER_POLICY_OEMVARS)
BOARD_OEM_VARS += $(BOOTLOADER_POLICY_OEMVARS)
endif

# It activates the Bootloader policy and RMA refurbishing
# features. TARGET_BOOTLOADER_POLICY is the desired bitmask for this
# device.
# * bit 0:
#   - 0: GVB class B.
#   - 1: GVB class A.  Device unlock is not permitted.  The only way
#     to unlock is to use the secured force-unlock mechanism.
# * bit 1 and 2 defines the minimal boot state required to boot the
#   device:
#   - 0x0: BOOT_STATE_RED (GVB default behavior)
#   - 0x1: BOOT_STATE_ORANGE
#   - 0x2: BOOT_STATE_YELLOW
#   - 0x3: BOOT_STATE_GREEN
# If TARGET_BOOTLOADER_POLICY is equal to 'static' the bootloader
# policy is not built but is provided statically in the repository.
# If TARGET_BOOTLOADER_POLICY is equal to 'external' the bootloader
# policy OEMVARS should be installed manually in
# $(BOOTLOADER_POLICY_OEMVARS).
TARGET_BOOTLOADER_POLICY := 0x0
# If the following variable is set to false, the bootloader policy and
# RMA refurbishing features does not use time-based authenticated EFI
# variables to store the BPM and OAK values.  The BPM value is defined
# compilation time by the TARGET_BOOTLOADER_POLICY variable.
TARGET_BOOTLOADER_POLICY_USE_EFI_VAR := true
#ifeq ($(TARGET_BOOTLOADER_POLICY),$(filter $(TARGET_BOOTLOADER_POLICY),0x0 0x2 0x4 0x6))
# OEM Unlock reporting 1
#ADDITIONAL_DEFAULT_PROPERTIES += \
#	ro.oem_unlock_supported=1
#endif
ifeq ($(TARGET_BOOTLOADER_POLICY),$(filter $(TARGET_BOOTLOADER_POLICY),static external))
# The bootloader policy is not generated build time but is supplied
# statically in the repository or in $(PRODUCT_OUT)/.  If your
# bootloader policy allows the device to be unlocked, uncomment the
# following lines:
# ADDITIONAL_DEFAULT_PROPERTIES += \
# 	ro.oem_unlock_supported=1
endif



# Kernelfligner will assume the BIOS support secure boot. Not check the EFI variable SecureBoot
# It is useful when the BIOS does not support secure boot.
KERNELFLINGER_ASSUME_BIOS_SECURE_BOOT := true


KERNELFLINGER_USE_RPMB_SIMULATE := true

##############################################################
# Source: device/intel/mixins/groups/audio/project-celadon/BoardConfig.mk
##############################################################
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true
BOARD_USES_GENERIC_AUDIO ?= false
ifneq ($(BOARD_USES_GENERIC_AUDIO), true)
# Audio HAL selection Flag default setting.
#  INTEL_AUDIO_HAL:= audio     -> baseline HAL
#  INTEL_AUDIO_HAL:= audio_pfw -> PFW-based HAL
INTEL_AUDIO_HAL := audio
else
INTEL_AUDIO_HAL := stub
endif

# Use XML audio policy configuration file
USE_XML_AUDIO_POLICY_CONF ?= 1
# Use configurable audio policy
USE_CONFIGURABLE_AUDIO_POLICY ?= 1
##############################################################
# Source: device/intel/mixins/groups/wlan/iwlwifi/BoardConfig.mk
##############################################################
# This enables the wpa wireless driver
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_2_1_DEVEL
# required for wifi HAL support
BOARD_WLAN_DEVICE := iwlwifi

# Enabling iwlwifi
BOARD_USING_INTEL_IWL := true
INTEL_IWL_MODULE_SUB_FOLDER := rel
INTEL_IWL_PNVM_HW := DEFAULT
INTEL_IWL_USE_COMPAT_INSTALL := y
INTEL_IWL_COMPAT_INSTALL_DIR := updates
INTEL_IWL_COMPAT_INSTALL_PATH ?= .
INTEL_IWL_INSTALL_MOD_STRIP := INSTALL_MOD_STRIP=1
CROSS_COMPILE ?= CROSS_COMPILE=$(YOCTO_CROSSCOMPILE)
INSTALLED_KERNEL_TARGET ?= $(PREVIOUS_KERNEL_MODULE)
KERNEL_OUT_DIR ?= $(PRODUCT_OUT)/obj/kernel

COMBO_CHIP_VENDOR := intel
COMBO_CHIP := lnp

# SoftAp FW reload definitions.
# we don't really need this, it's to avoid error when the framework
# will trigger the fwReloadSoftap function, what will lead to an error
# enabling the SoftAp.
# so we set up this for letting the function execute gracefully.
WIFI_DRIVER_FW_PATH_STA := "/system/vendor/firmware/iwlwifi-softap-dummy.ucode"
WIFI_DRIVER_FW_PATH_AP  := "/system/vendor/firmware/iwlwifi-softap-dummy.ucode"
WIFI_DRIVER_FW_PATH_P2P := "/system/vendor/firmware/iwlwifi-softap-dummy.ucode"
WIFI_DRIVER_FW_PATH_PARAM := "/dev/null"

# config_wifi_background_scan_support=true:
DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-pno

DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-tcp-buffers

# Add SIM , AKA and AKA' methods in EAP entries of WiFi UI
DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-eap-methods

ifneq (lhp,$(INTEL_IWL_MODULE_SUB_FOLDER))
    DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-dual-band
endif

# WiDi / Miracast Optimisations
DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-miracast-go
DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-p2p-connected-stop-scan
DEVICE_PACKAGE_OVERLAYS += device/intel/common/wlan/overlay-miracast-force-single-ch

#BOARD_SEPOLICY_DIRS += #device/intel/sepolicy/wlan/load_iwlwifi


BOARD_SEPOLICY_M4DEFS += module_iwlwifi=true
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/wlan/iwlwifi
##############################################################
# Source: device/intel/mixins/groups/cpu-arch/skl/BoardConfig.mk
##############################################################
ifeq ($(BOARD_USE_64BIT_USERSPACE),true)
# 64b-specific items:
TARGET_ARCH := x86_64
TARGET_CPU_ABI := x86_64
TARGET_2ND_CPU_ABI := x86
TARGET_2ND_ARCH := x86
TARGET_2ND_ARCH_VARIANT := x86
TARGET_2ND_CPU_VARIANT := x86
else
# 32b-specific items:
TARGET_ARCH := x86
TARGET_CPU_ABI := x86
endif
##############################################################
# Source: device/intel/mixins/groups/cpuset/4cores/BoardConfig.mk
##############################################################
ENABLE_CPUSETS := true
##############################################################
# Source: device/intel/mixins/groups/rfkill/true/BoardConfig.mk
##############################################################
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/rfkill
##############################################################
# Source: device/intel/mixins/groups/dexpreopt/enabled/BoardConfig.mk
##############################################################
# enable dex-preoptimization.
WITH_DEXPREOPT := true
WITH_DEXPREOPT_PIC := true
##############################################################
# Source: device/intel/mixins/groups/thermal/dptf/BoardConfig.mk
##############################################################
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/thermal
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/thermal/dptf
BOARD_KERNEL_CMDLINE += thermal.off=1
##############################################################
# Source: device/intel/mixins/groups/debug-phonedoctor/true/BoardConfig.mk
##############################################################
BOARD_SEPOLICY_M4DEFS += module_debug_phonedoctor=true
BOARD_SEPOLICY_DIRS += device/intel/androidia/sepolicy/debug-phonedoctor
##############################################################
# Source: device/intel/mixins/groups/flashfiles/ini/BoardConfig.mk
##############################################################
FLASHFILES_CONFIG ?= $(TARGET_DEVICE_DIR)/flashfiles.ini
USE_INTEL_FLASHFILES := true
VARIANT_SPECIFIC_FLASHFILES ?= false
FAST_FLASHFILES := true

##############################################################
# Source: device/intel/mixins/groups/trusty/true/BoardConfig.mk
##############################################################
TARGET_USE_TRUSTY := true

KM_VERSION := 2
ifeq ($(KM_VERSION),1)
BOARD_USES_TRUSTY := true
BOARD_USES_KEYMASTER1 := true
endif

BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/trusty
BOARD_SEPOLICY_M4DEFS += module_trusty=true

LK_PRODUCT := project-celadon_64

LKBUILD_TOOLCHAIN_ROOT = $(PWD)/vendor/intel/external/prebuilts/elf/
LKBUILD_X86_TOOLCHAIN =
LKBUILD_X64_TOOLCHAIN = $(LKBUILD_TOOLCHAIN_ROOT)x86_64-elf-4.9.1-Linux-x86_64/bin
TRUSTY_BUILDROOT = $(PWD)/$(PRODUCT_OUT)/obj/trusty/

TRUSTY_ENV_VAR += LK_CORE_NUM=1
TRUSTY_ENV_VAR += TARGET_PRODUCT=$(LK_PRODUCT)

#for trusty lk
TRUSTY_ENV_VAR += BUILDROOT=$(TRUSTY_BUILDROOT)
TRUSTY_ENV_VAR += PATH=$(PATH):$(LKBUILD_X86_TOOLCHAIN):$(LKBUILD_X64_TOOLCHAIN)

#for trusty vmm
# use same toolchain as android kernel
TRUSTY_ENV_VAR += COMPILE_TOOLCHAIN=$(EVMMBUILD_TOOLCHAIN)

# output build dir to android out folder
TRUSTY_ENV_VAR += BUILD_DIR=$(TRUSTY_BUILDROOT)
TRUSTY_ENV_VAR += LKBIN_DIR=$(TRUSTY_BUILDROOT)/build-sand-x86-64/

#Workaround CPU lost issue on SIMICS, will remove this line below after PO.
BOARD_KERNEL_CMDLINE += cpu_init_udelay=500000

BOARD_TOSIMAGE_PARTITION_SIZE := 10485760
##############################################################
# Source: device/intel/mixins/groups/camera/usbcamera/BoardConfig.mk
##############################################################
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/camera/usbcamera
##############################################################
# Source: device/intel/mixins/groups/memtrack/true/BoardConfig.mk
##############################################################
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/memtrack
# ------------------ END MIX-IN DEFINITIONS ------------------

# Install Native Bridge
WITH_NATIVE_BRIDGE := true

# Enable ARM codegen for x86 with Native Bridge
BUILD_ARM_FOR_X86 := true

# Native Bridge ABI List
NB_ABI_LIST_32_BIT := armeabi-v7a armeabi
NB_ABI_LIST_64_BIT := arm64-v8a

# Support 64 Bit Apps
ifeq ($(ENABLE_NATIVEBRIDGE_64BIT),true)
  TARGET_CPU_ABI_LIST_64_BIT ?= $(TARGET_CPU_ABI) $(TARGET_CPU_ABI2)
  TARGET_CPU_ABI_LIST_32_BIT ?= $(TARGET_2ND_CPU_ABI) $(TARGET_2ND_CPU_ABI2)
  TARGET_CPU_ABI_LIST := \
      $(TARGET_CPU_ABI_LIST_64_BIT) \
      $(TARGET_CPU_ABI_LIST_32_BIT) \
      $(NB_ABI_LIST_32_BIT) \
      $(NB_ABI_LIST_64_BIT)
  TARGET_CPU_ABI_LIST_32_BIT += $(NB_ABI_LIST_32_BIT)
  TARGET_CPU_ABI_LIST_64_BIT += $(NB_ABI_LIST_64_BIT)
else
  TARGET_CPU_ABI_LIST_32_BIT ?= $(TARGET_CPU_ABI) $(TARGET_CPU_ABI2)
  TARGET_CPU_ABI_LIST_32_BIT += $(NB_ABI_LIST_32_BIT)
  TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_32_BIT)
endif

BOARD_SEPOLICY_M4DEFS += module_houdini=true
BOARD_SEPOLICY_DIRS += device/intel/project-celadon/sepolicy/houdini
