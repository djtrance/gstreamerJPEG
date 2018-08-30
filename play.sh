#!/bin/bash


gst-launch-1.0 udpsrc port=5000 ! 'application/x-rtp,encoding-name=JPEG,payload=26,framerate=(fraction)1/1' ! rtpjpegdepay ! jpegdec ! autovideosink sync=false low-latency=1 -v
#gst-launch-1.0 udpsrc port=5000 caps="image/jpeg, width=(int)720, height=(int)480, framerate=(fraction)30/1"  ! rtpjpegdepay ! jpegdec ! autovideosink sync=false low-latency=1 -v
