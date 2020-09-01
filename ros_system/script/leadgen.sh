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

cd "${DIR}/.."

source "${DIR}/zibet_base.sh"
source "third_party/leadgen/setup.bash"

function start() {
    LOG_HDMAP="data/log/leadgen_hdmp.out"
    LOG_SLMAP="data/log/leadgen_slmap.out"
    LOG_FRAME="data/log/leadgen_frame.out"
    LOG_VIEWER="data/log/leadgen_viewer.out"

    CMD_HDMAP="roslaunch leadgen_map hdmap.launch"
    CMD_SLMAP="roslaunch leadgen_map slmap_server.launch"
    CMD_VIEWER="roslaunch leadgen_hdmap_tools viewer.launch"
    CMD_FRAME="roslaunch leadgen_frame_master master.launch"
    
    NUM_PROCESSES="$(pgrep -c -f "hdmap_server")"
    if [ "${NUM_PROCESSES}" -eq 0 ]; then
       eval "nohup ${CMD_HDMAP} </dev/null >${LOG_HDMAP} 2>&1 &"
    fi

    NUM_PROCESSES="$(pgrep -c -f "slmap_server")"
    if [ "${NUM_PROCESSES}" -eq 0 ]; then
       eval "nohup ${CMD_SLMAP} </dev/null >${LOG_SLMAP} 2>&1 &"
    fi

    NUM_PROCESSES="$(pgrep -c -f "frame_master")"
    if [ "${NUM_PROCESSES}" -eq 0 ]; then
       eval "nohup ${CMD_FRAME} </dev/null >${LOG_FRAME} 2>&1 &"
    fi

    NUM_PROCESSES="$(pgrep -c -f "hdmap_viewer")"
    if [ "${NUM_PROCESSES}" -eq 0 ]; then
       eval "nohup ${CMD_VIEWER} </dev/null >${LOG_VIEWER} 2>&1 &"
    fi
}

function stop() {
    pkill -SIGTERM -f viewer.launch
    pkill -SIGTERM -f master.launch
    pkill -SIGTERM -f slmap_server.launch
    pkill -SIGTERM -f hdmap.launch
}

# run command_name module_name
function run() {
    case $1 in
        start)
            start
            ;;
        stop)
            stop
            ;;
        *)
            start
            ;;
    esac
}

run "$1"
