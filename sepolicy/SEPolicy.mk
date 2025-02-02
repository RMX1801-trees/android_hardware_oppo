#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BOARD_SEPOLICY_DIRS += hardware/oppo/sepolicy/vendor
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += hardware/oppo/sepolicy/public

ifeq ($(BOARD_USES_QCOM_HARDWARE), true)
BOARD_SEPOLICY_DIRS += hardware/oppo/sepolicy/vendor/qti
endif
