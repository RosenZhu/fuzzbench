# Copyright 2020 Google LLC
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

FROM gcr.io/oss-fuzz-base/base-builder

RUN apt-get update && \
    apt-get install -y \
    make \
    autoconf \
    automake \
    libtool \
    wget \
    zlib1g-dev

RUN wget \
    https://downloads.sourceforge.net/project/libpng/libpng12/older-releases/1.2.56/libpng-1.2.56.tar.gz

RUN wget -qO $OUT/libpng_read_fuzzer.dict \
    https://raw.githubusercontent.com/google/fuzzing/master/dictionaries/png.dict
ADD seeds /opt/seeds
COPY * $SRC/
