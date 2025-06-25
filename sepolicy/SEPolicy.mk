#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

OPPO_SEPOLICY_PATH := hardware/oppo/sepolicy

ifeq ($(BOARD_USES_QCOM_HARDWARE), true)
BOARD_VENDOR_SEPOLICY_DIRS += \
	$(OPPO_SEPOLICY_PATH)/qti/vendor/common

endif
