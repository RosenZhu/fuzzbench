# Copyright 2016 Google Inc.
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
################################################################################

FROM gcr.io/oss-fuzz-base/base-builder@sha256:40d60f739c39fbb8f14a9aaa6e3509d60a1cd324be5b77ce76a435dfae564109
MAINTAINER mike.aizatsky@gmail.com
RUN apt-get update && apt-get install -y make autoconf automake libtool shtool pkg-config
RUN git clone https://github.com/file/file.git
WORKDIR file
COPY build.sh magic_fuzzer.cc $SRC/
