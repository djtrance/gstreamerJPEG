#!/bin/bash

./outpu_file.sh | gst-launch-1.0 -v fdsrc  ! jpegdec ! autovideosink sync=false low-latency=1 -v
