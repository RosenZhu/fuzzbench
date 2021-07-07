#!/bin/bash -eu
# Copyright 2019 Google Inc.
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

git checkout fuzzer
./configure --fuzzing --disable-doc --disable-nls --disable-idn
make fuzz

cd fuzz
cp address-fuzz $OUT/
zip -q -r $OUT/address-fuzz_seed_corpus.zip corpus_address
cp rfc822_headers_dict.txt $OUT/address-fuzz.dict
cp address-fuzz.options $OUT/
