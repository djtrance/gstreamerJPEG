#!/bin/bash

while (true) do 
    sleep 1 
    #raspivid -n -t 1000000 -vf -b 2000000 -fps 25 -some_cmd_to_run_only_1_frame -o - &&  \ 
    #./outpu_file.sh |  gst-launch-1.0 fdsrc fd=0 ! rtpjpegpay !udpsink host=127.0.0.1 port=5000 
    #./outpu_file.sh | gst-launch-1.0 -v fdsrc ! decodebin ! rtpjpegpay ! udpsink host=127.0.0.1 port=5000
  #  ./outpu_file.sh | gst-launch-1.0 -v fdsrc ! "image/jpeg, width=720, height=480,framerate=30/1"  ! jpegparse ! rtpjpegpay ! udpsink host=127.0.0.1 port=5000

    # funciona pero aun no es optimo
     ./outpu_file.sh | gst-launch-1.0 -v fdsrc ! "image/jpeg, width=720, height=480,framerate=30/1" ! jpegdec  ! jpegenc ! rtpjpegpay ! udpsink host=127.0.0.1 port=5000
#    ./outpu_file.sh | gst-launch-1.0 -v fdsrc    !  jpegparse ! rtpjpegpay  ! udpsink host=127.0.0.1 port=5000
    # | gst-launch-1.0 fdsrc fd=0 ! decodebin ! videorate ! video/x-raw,framerate=1/1 ! jpegenc ! multifilesink location=img_%03d.jpeg 
done 

