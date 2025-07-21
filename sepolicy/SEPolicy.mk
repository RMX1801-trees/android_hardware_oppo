#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

OPPO_SEPOLICY_PATH := hardware/oppo/sepolicy

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
	$(OPPO_SEPOLICY_PATH)/common/private

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
	$(OPPO_SEPOLICY_PATH)/common/public

BOARD_VENDOR_SEPOLICY_DIRS += \
	$(OPPO_SEPOLICY_PATH)/common/vendor

ifeq ($(BOARD_USES_QCOM_HARDWARE), true)
BOARD_VENDOR_SEPOLICY_DIRS += \
	$(OPPO_SEPOLICY_PATH)/qti/vendor/common

SEPOLICY_PLATFORM := $(subst device/qcom/,,$(SEPOLICY_PATH))
ifeq ($(SEPOLICY_PLATFORM), sepolicy-legacy-um)
BOARD_VENDOR_SEPOLICY_DIRS += \
	$(OPPO_SEPOLICY_PATH)/qti/vendor/legacy-um
else
BOARD_VENDOR_SEPOLICY_DIRS += \
	$(OPPO_SEPOLICY_PATH)/qti/vendor/vndr
endif

endif
