#!/bin/bash
NAME=simonemiche/turtlebot4
TAG=humble

sudo xhost +
sudo docker run \
     --network=host --privileged \
     -it \
     --rm \
     -e DISPLAY=unix${DISPLAY} \
     -e ROS_DOMAIN_ID=0 \
     --device /dev/dri/card0:/dev/dri/card0 \
     ${NAME}:${TAG} bash

     #-v /home/simomic/rosbag2_2024_01_11-16_35_16:/home/ecub_docker/rosbags \
     
     #-v /tmp/.X11-unix:/tmp/.X11-unix \
     #-v /home/simone/rosbags_vlm:/home/ecub_docker/rosbags_vlm \
