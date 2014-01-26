#!/bin/sh

set -e

export DEVICE=expressltexx
export VENDOR=samsung
./../expressltexx/extract-files.sh $@
