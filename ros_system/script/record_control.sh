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

  NUM_PROCESSES="$(pgrep -c -f "rostopic")"
  if [ "${NUM_PROCESSES}" -eq 0 ]; then
    RECORD_DATE=`date +%Y%m%d_%H%M`
    rostopic echo /zibet/canbus/chassis > Chassis${RECORD_DATE}.txt &
    rostopic echo /zibet/localization > Localization${RECORD_DATE}.txt &
    rostopic echo /zibet/perception/obstacles > Obstacle${RECORD_DATE}.txt &
    echo "Start recording chassis, localization and obstacles..."
  else
    echo "please close other rostopic before record"
  fi
}

function stop() {
  pkill -SIGINT -f rostopic
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