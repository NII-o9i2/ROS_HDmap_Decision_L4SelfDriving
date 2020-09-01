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

# Fail on first error.
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

# Update source
apt-get update -y

# Install xrdp
apt-get install -y xrdp

# Install nfs-server
apt-get install -y nfs-kernel-server

# Install retext
apt-get install -y retext

# Install ssh server
apt-get install -y openssh-server

# Install meld
apt-get install -y meld

# Install dconf-editor
apt-get install -y dconf-editor

# Install minicom
apt-get install -y minicom

# Install rzsz
apt-get install -y lrzsz

# Clean up.
