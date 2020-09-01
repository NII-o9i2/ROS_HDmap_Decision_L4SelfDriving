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

UPGRADE_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ZIP_FILE=${HOME}/StdControllerCore.zip

CORE_PATH=${UPGRADE_ROOT}/../modules/control/src/controller/core/StdController

if [ -f "$ZIP_FILE" ]; then
	#remove before unzip
	rm -fr ${HOME}/StdControllerCore
	unzip -d ${HOME}/StdControllerCore $ZIP_FILE 
	echo "unzip file done"
else
	echo "${ZIP_FILE} is not found"
fi

# copy the file
rm -f ${CORE_PATH}/*
cp ${HOME}/StdControllerCore/StdController/StdControllerCore_ert_rtw/*.h ${CORE_PATH}/
cp ${HOME}/StdControllerCore/StdController/StdControllerCore_ert_rtw/*.cpp ${CORE_PATH}/
echo "Replace StdController core files done"

# remove directory after install
rm -fr ${HOME}/StdControllerCore


