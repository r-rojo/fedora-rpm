#! /bin/sh -l
#
# entrypoint.sh
# Copyright (C) 2020 rrojo <rrojo@opae-ub16-01>
#
# Distributed under terms of the MIT license.
#
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"


