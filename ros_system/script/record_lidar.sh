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

function start() {
  if [ ! -d ${BAG_DIR} ];then
     mkdir ${BAG_DIR}
  fi
  cd ${BAG_DIR}

  # Start recording.
  LOG="${DIR}/../data/log/record_lidar.out"
  NUM_PROCESSES="$(pgrep -c -f "rosbag record")"
  if [ "${NUM_PROCESSES}" -eq 0 ]; then
    nohup rosbag record \
        /zibet/localization \
        /zibet/sensor/lidar/pointcloud1 \
        /zibet/sensor/lidar/pointcloud2 \
        /zibet/sensor/lidar/pointcloud3  </dev/null >"${LOG}" 2>&1 &
    fi
}

function stop() {
  pkill -SIGINT -f record
}

function help() {
  echo "Usage:"
  echo "$0 start                     Record bag to data/bag."
  echo "$0 stop                      Stop recording."
  echo "$0 help                      Show this help message."
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
