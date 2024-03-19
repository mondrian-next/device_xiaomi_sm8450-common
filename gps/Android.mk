ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE),)

# Set required flags
GNSS_CFLAGS := \
    -Werror \
    -Wformat \
    -Wformat-extra-args \
    -Wunused-label \
    -Wunused-variable \
    -Wunused-function \
    -Wimplicit-fallthrough \
    -Wno-unused-parameter \
    -Wno-undefined-bool-conversion

GNSS_HIDL_VERSION := 2.1
GNSS_AIDL_VERSION := 1

GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += msm8937
GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += msm8953
GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += msm8998
GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += apq8098_latv
GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += sdm710
GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += qcs605
GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += sdm845
GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST += sdm660

ifneq (,$(filter $(GNSS_HIDL_LEGACY_MEASURMENTS_TARGET_LIST),$(TARGET_BOARD_PLATFORM)))
GNSS_HIDL_LEGACY_MEASURMENTS := true
endif

# Enable NHz location feature. Default is false.
# Set this flag to true to enable the NHz location feature.
FEATURE_NHZ_ENABLED := false

LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))

GNSS_SANITIZE_DIAG := cfi bounds null unreachable integer address

endif # ifneq ($(BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE),)
