# Copyright (C) 2015 The MoKee Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := hw_audio.c
LOCAL_MODULE := libshim_sound_trigger
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

# healthd
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    healthd_board_kenzo.cpp

LOCAL_MODULE := libhealthd.kenzo
LOCAL_C_INCLUDES := system/core/healthd
LOCAL_CFLAGS := -Werror

include $(BUILD_STATIC_LIBRARY)