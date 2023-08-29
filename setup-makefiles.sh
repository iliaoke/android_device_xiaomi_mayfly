#!/bin/bash
#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function vendor_imports() {
    cat << EOF >> "$1"
		"device/xiaomi/sm8450-common",
		"hardware/qcom-caf/sm8450",
		"hardware/xiaomi",
		"vendor/qcom/opensource/commonsys-intf/display",
EOF
}

set -e

# Required!
export DEVICE=mayfly
export DEVICE_COMMON=sm8450-common
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
