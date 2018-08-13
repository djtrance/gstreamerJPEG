#!/bin/bash
gst-launch-1.0 udpsrc port=5000 ! 'application/x-rtp,encoding-name=JPEG,payload=26,framerate=(fraction)1/1' ! rtpjpegdepay ! jpegdec ! autovideosink sync=false low-latency=1 -v
