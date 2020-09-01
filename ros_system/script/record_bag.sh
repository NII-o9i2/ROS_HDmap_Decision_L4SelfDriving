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


DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "${DIR}/zibet_base.sh"

BAG_DIR="${DIR}/../data/bag/"
DISK_DIR="${DIR}/../data/disk/"
DEVICE="/dev/sdb1"
SIZE=10240         #rosbag max size

function start() {
  if [ ! -d ${BAG_DIR} ];then
     mkdir ${BAG_DIR}
  fi

  if [ ! -d ${DISK_DIR} ];then
     mkdir ${DISK_DIR}
  fi

  DISK_STATE="$(sudo fdisk -l | grep -c ${DEVICE})"
  MOUNT_STATE="$(sudo df -h | grep -c ${DEVICE})"

  #echo "${DISK_STATE}"

  if [ "${DISK_STATE}" -eq 0 ]; 
    then
    cd ${BAG_DIR}
  else
    if [ "${MOUNT_STATE}" -eq 0 ]; 
      then
        sudo mount ${DEVICE} ${DISK_DIR}
	echo "mount"
    fi
    cd ${DISK_DIR}
  fi

  # Start recording.
  LOG="${DIR}/../data/log/record_bag.out"
  NUM_PROCESSES="$(pgrep -c -f "rosbag record")"
  if [ "${NUM_PROCESSES}" -eq 0 ]; then
    nohup rosbag record \
        /zibet/sensor/gnss/gnss_data \
        /zibet/sensor/gnss/gnss_stat \
        /zibet/canbus/chassis \
        /zibet/sensor/camera/lanemarkers \
        /zibet/sensor/camera/objects \
        /zibet/sensor/camera/tsr \
        /zibet/sensor/radar/objects \
        /zibet/sensor/cornerradar1 \
        /zibet/sensor/cornerradar2 \
        /zibet/sensor/cornerradar3 \
        /zibet/sensor/lidar/lidarscan1 \
        /zibet/sensor/lidar/lidarscan_difop1 \
        /zibet/sensor/lidar/lidarscan2 \
        /zibet/sensor/lidar/lidarscan_difop2 \
        /zibet/sensor/lidar/lidarscan3 \
        /zibet/sensor/lidar/lidarscan_difop3
        --split --size=$SIZE </dev/null >"${LOG}" 2>&1 &
  fi
}

function stop() {
  pkill -SIGINT -f record
}


function help() {
  echo "Usage:"
  echo "$0 start                        Record bag to data/bag or data/disk."
  echo "$0 stop                         Stop recording."
  echo "$0 help                         Show this help message."
}

case $1 in
  start)
    shift
    start $@
    ;;
  stop)
    shift
    stop $@
    ;;
  help)
    shift
    help $@
    ;;
  *)
    start $@
    ;;
esac
