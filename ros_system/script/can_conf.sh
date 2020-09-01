#!/usr/bin/env bash

###############################################################################
# Copyright 2019 The Zibet Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################

/sbin/ip link set can0 up type can bitrate 500000
if [ $? -ne 0 ]; then
	echo "config CAN card channels fail"
else
	/sbin/ip link set can1 up type can bitrate 500000
	/sbin/ip link set can2 up type can bitrate 500000
	/sbin/ip link set can3 up type can bitrate 500000
	/sbin/ip link set can4 up type can bitrate 500000
	/sbin/ip link set can5 up type can bitrate 500000
	/sbin/ip link set can6 up type can bitrate 500000
	/sbin/ip link set can7 up type can bitrate 250000
fi
