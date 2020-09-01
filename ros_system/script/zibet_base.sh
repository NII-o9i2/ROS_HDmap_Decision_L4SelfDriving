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

ZIBET_ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

RED='\033[0;31m'
YELLOW='\e[33m'
NO_COLOR='\033[0m'

function info() {
  (>&2 echo -e "[\e[34m\e[1mINFO\e[0m] $*")
}

function error() {
  (>&2 echo -e "[${RED}ERROR${NO_COLOR}] $*")
}

function warning() {
  (>&2 echo -e "${YELLOW}[WARNING] $*${NO_COLOR}")
}

function ok() {
  (>&2 echo -e "[\e[32m\e[1m OK \e[0m] $*")
}

function print_delim() {
  echo '============================'
}

function get_now() {
  echo $(date +%s)
}

function print_time() {
  END_TIME=$(get_now)
  ELAPSED_TIME=$(echo "$END_TIME - $START_TIME" | bc -l)
  MESSAGE="Took ${ELAPSED_TIME} seconds"
  info "${MESSAGE}"
}

function success() {
  print_delim
  ok "$1"
  print_time
  info "Zibet Version: ${VERSION}"
  print_delim
}

function fail() {
  print_delim
  error "$1"
  print_time
  print_delim
  exit -1
}

function set_lib_path() {
  if [ -e "${ROS_ROOT}" ]; then
    source ${ROS_ROOT}/../../setup.bash
  fi
  export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/lib
  
  if [ -e "${ZIBET_ROOT_DIR}/devel/" ]; then
    source ${ZIBET_ROOT_DIR}/devel/setup.bash
  fi

  if [ -e "${ZIBET_ROOT_DIR}/install/" ]; then
    source ${ZIBET_ROOT_DIR}/install/setup.bash
  fi
}

function create_data_dir() {
  local DATA_DIR="${ZIBET_ROOT_DIR}/data"
  
  mkdir -p "${DATA_DIR}/log"
  mkdir -p "${DATA_DIR}/bag"
}

function determine_bin_prefix() {
  ZIBET_BIN_PREFIX=$ZIBET_ROOT_DIR
  if [ -e "${ZIBET_ROOT_DIR}/devel/lib" ]; then
    ZIBET_BIN_PREFIX="${ZIBET_ROOT_DIR}/devel/lib"
  fi
  if [ -e "${ZIBET_ROOT_DIR}/install/lib" ]; then
    ZIBET_BIN_PREFIX="${ZIBET_ROOT_DIR}/install/lib"
  fi
  export ZIBET_BIN_PREFIX
}


function start_tp_customized_path() {
  MODULE_PATH=$1
  MODULE=$2
  shift 2

  eval "${ZIBET_BIN_PREFIX}/${MODULE_PATH}/${MODULE} \
        --alsologtostderr --log_dir=${ZIBET_ROOT_DIR}/data/log $@"
}

function start_fe() {
  MODULE=$1
  shift

  start_fe_customized_path $MODULE $MODULE "$@"
}

function is_stopped_customized_path() {
  MODULE_PATH=$1
  MODULE=$2
  NUM_PROCESSES=$(pgrep -c -f "${MODULE}/${MODULE}")
  if [ "${NUM_PROCESSES}" -eq 0 ]; then
    return 1
  else
    return 0
  fi
}

function start_customized_path() {
  MODULE_PATH=$1
  MODULE=$2
  shift 2

  LOG="${ZIBET_ROOT_DIR}/data/log/${MODULE}.out"
  is_stopped_customized_path "${MODULE_PATH}" "${MODULE}"
  if [ $? -eq 1 ]; then
    eval "nohup ${ZIBET_BIN_PREFIX}/${MODULE}/${MODULE} \
        --flagfile=${ZIBET_ROOT_DIR}/modules/${MODULE_PATH}/conf/${MODULE}.conf \
        --log_dir=${ZIBET_ROOT_DIR}/data/log $@ </dev/null >${LOG} 2>&1 &"
    sleep 0.5
    is_stopped_customized_path "${MODULE_PATH}" "${MODULE}"
    if [ $? -eq 0 ]; then
      echo "Launched module ${MODULE}."
      return 0
    else
      echo "ERROR:Could not launch module := ${ZIBET_BIN_PREFIX}/${MODULE}/${MODULE}!"
      return 1
    fi
  else
    echo "Module ${MODULE} is already running - skipping."
    return 2
  fi
}

function start() {
  MODULE_PATH=$1
  MODULE=$2
  shift 2

  start_customized_path $MODULE_PATH $MODULE "$@"
}

function start_gdb_customized_path() {
  MODULE_PATH=$1
  MODULE=$2
  shift 2

  eval "gdb --args ${ZIBET_BIN_PREFIX}/${MODULE}/${MODULE} \
      --flagfile=${ZIBET_ROOT_DIR}/modules/${MODULE_PATH}/conf/${MODULE}.conf \
      --log_dir=${ZIBET_ROOT_DIR}/data/log $@"
}

function start_gdb() {
  MODULE_PATH=$1
  MODULE=$2
  shift 2

  start_gdb_customized_path $MODULE_PATH $MODULE "$@"
}

function stop_customized_path() {
  MODULE_PATH=$1
  MODULE=$2

  is_stopped_customized_path "${MODULE_PATH}" "${MODULE}"
  if [ $? -eq 0 ]; then
    pkill -SIGTERM -f "${MODULE}/${MODULE}"
    # check again
    sleep 1.0
    is_stopped_customized_path "${MODULE_PATH}" "${MODULE}"
    if [ $? -eq 0 ]; then
      echo "Force to kill process ${MODULE}"
      kill -9 $(pgrep "${MODULE}")
    else
      echo "Successfully stopped module ${MODULE}."
    fi
  else
    echo "Module ${MODULE} is not running - skipping."
  fi
}

function stop() {
  MODULE_PATH=$1
  MODULE=$2

  stop_customized_path $MODULE_PATH $MODULE
}

# Note: This 'help' function here will overwrite the bash builtin command 'help'.
# TODO: add a command to query known modules.
function help() {
cat <<EOF
Invoke ". scripts/zibet_base.sh" within docker to add the following commands to the environment:
Usage: COMMAND [<module_name>]

COMMANDS:
  help:      show this help message
  start:     start the module in background
  start_gdb: start the module with gdb
  stop:      stop the module
EOF
}

function run_customized_path() {
  local module_path=$1
  local module=$2
  local cmd=$3
  shift 3
  case $cmd in
    start)
      start_customized_path $module_path $module "$@"
      ;;
    start_tp)
      start_tp_customized_path $module_path $module "$@"
      ;;
    start_gdb)
      start_gdb_customized_path $module_path $module "$@"
      ;;
    stop)
      stop_customized_path $module_path $module
      ;;
    help)
      help
      ;;
    *)
      start_customized_path $module_path $module $cmd "$@"
    ;;
  esac
}

# run command_name module_name
function run() {
  local module_path=$1
  local module=$2
  shift
  run_customized_path $module_path $module "$@"
}

# create data directory
set_lib_path
create_data_dir
determine_bin_prefix

