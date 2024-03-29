#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

DEVICE=a6plte
VENDOR=samsung

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

ANDROID_ROOT="${MY_DIR}/../../.."

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
source "${HELPER}"

# Default to sanitizing the vendor folder before extraction
CLEAN_VENDOR=true

KANG=
SECTION=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
                CLEAN_VENDOR=false
                ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "${SRC}" ]; then
    SRC="adb"
fi

function blob_fixup() {
    case "${1}" in
        vendor/bin/hw/rild)
        "${PATCHELF}" --replace-needed "libril.so" "libril-samsung.so" "${2}"
        ;;
        vendor/lib/hw/audio.primary.msm8953.so)
        "${PATCHELF}" --remove-needed "libaudio_soundtrigger.so" "${2}"
        ;;
	vendor/lib/libsec-ril.so)
        sed -i "s/libhidltransport.so/libcutils-v29.so\x00\x00\x00/" "${2}"
        sed -i 's/ril.dds.call.slotid/vendor.calls.slotid/g' "${2}"
        "${PATCHELF}" --replace-needed "libprotobuf-cpp-full.so" "libprotobuf-cpp-full-v29.so" "${2}"
        "${PATCHELF}" --replace-needed "libril.so" "libril-samsung.so" "${2}"
        ;;
	vendor/lib/libsec-ril-dsds.so)
        sed -i "s/libhidltransport.so/libcutils-v29.so\x00\x00\x00/" "${2}"
        sed -i 's/ril.dds.call.slotid/vendor.calls.slotid/g' "${2}"
        "${PATCHELF}" --replace-needed "libprotobuf-cpp-full.so" "libprotobuf-cpp-full-v29.so" "${2}"
        "${PATCHELF}" --replace-needed "libril.so" "libril-samsung.so" "${2}"
        ;;
	vendor/lib/hw/camera.msm8953.so)
	    "${PATCHELF}" --replace-needed "libcamera_client.so" "libcamera_metadata_helper.so" "${2}"
	    "${PATCHELF}" --replace-needed "libgui.so" "libgui_vendor.so" "${2}"
	    ;;
        vendor/lib/mediadrm/libwvdrmengine.so)
            "${PATCHELF}" --replace-needed "libprotobuf-cpp-lite.so" "libprotobuf-cpp-lite-v29.so" "${2}"
            ;;
        vendor/lib/libwvhidl.so)
            "${PATCHELF}" --replace-needed "libprotobuf-cpp-lite.so" "libprotobuf-cpp-lite-v29.so" "${2}"
            ;;
	vendor/lib/libhifills.so)
        "${PATCHELF}" --add-needed "libdemangle.so" "${2}"
            ;;
        vendor/lib/libsample1.so)
            sed -i 's|/data/misc/sample1|/data/misc/sample2|g' "${2}"
            ;;
        vendor/lib64/libsample2.so)
            "${PATCHELF}" --remove-needed "libsample3.so" "${2}"
            "${PATCHELF}" --add-needed "libsample4.so" "${2}"
            ;;
        vendor/lib/libsample5.so)
            "${PATCHELF}" --replace-needed "libsample6.so" "libsample7.so" "${2}"
            ;;
        vendor/lib/libsample7.so)
            "${PATCHELF}" --set-soname "libsample7.so" "${2}"
            ;;
    esac
}

# Initialize the helper
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}" false "${CLEAN_VENDOR}"

extract "${MY_DIR}/proprietary-files.txt" "${SRC}" "${KANG}" --section "${SECTION}"

"${MY_DIR}/setup-makefiles.sh"
