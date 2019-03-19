#
# Copyright 2017 The FMO Open Source Project
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

# let's download msm8953 common reference
if ! [ -d device/xiaomi/msm8953-common ]; then
    git clone https://github.com/FreeMobileOS/msm8953-common.git --branch fmo-9 device/xiaomi/msm8953-common
fi

# let's download vendor blobs
if ! [ -d vendor/xiaomi ]; then
    git clone https://github.com/FreeMobileOS/proprietary_vendor_xiaomi.git --branch fmo-9 vendor/xiaomi
fi
