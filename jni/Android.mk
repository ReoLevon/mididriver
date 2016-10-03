# Copyright (C) 2009 The Android Open Source Project
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
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libsonivox
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libsonivox.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libcutils
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libcutils.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE := libutils
LOCAL_SRC_FILES := libs/$(TARGET_ARCH_ABI)/libutils.so

include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_MODULE    := midi
LOCAL_SRC_FILES := midi.cpp
LOCAL_LDLIBS := -lOpenSLES -llog

include $(BUILD_SHARED_LIBRARY)

# include $(CLEAR_VARS)

# LOCAL_MODULE    := utils
# LOCAL_SRC_FILES := utils.cpp

# include $(BUILD_SHARED_LIBRARY)

# include $(CLEAR_VARS)

# LOCAL_MODULE    := cutils
# LOCAL_SRC_FILES := cutils.cpp

# include $(BUILD_SHARED_LIBRARY)