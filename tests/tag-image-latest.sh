#!/bin/bash
# Since: April, 2023
# Author: gvenzl
# Name: tag-image-latest.sh
# Description: Tag the latest image
#
# Copyright 2023 Gerald Venzl
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Exit on errors
# Great explanation on https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eeuo pipefail

source ./functions.sh

# Tag latest image
podman tag gvenzl/oracle-free:23.7-$(getArch)           gvenzl/oracle-free:latest-$(getArch)

podman tag gvenzl/oracle-free:23.7-faststart-$(getArch) gvenzl/oracle-free:latest-faststart-$(getArch)
