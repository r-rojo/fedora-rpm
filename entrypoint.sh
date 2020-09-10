#! /bin/sh -l
#
# entrypoint.sh
# Copyright (C) 2020 rrojo <rrojo@opae-ub16-01>
#
# Distributed under terms of the MIT license.
#
git clone https://github.com/OPAE/opae-sdk.git -b $1
cd opae-sdk
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=$2  -DCPACK_GENERATOR=RPM -DOPAE_BUILD_LEGACY=ON
make package_rpm -j $(nproc)

echo "::set-output name=time::$time"

