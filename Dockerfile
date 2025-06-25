FROM osrf/ros:humble-desktop-full

RUN sudo apt update && sudo apt install ros-humble-rmw-cyclonedds-cpp -y
COPY turtlebot4_cyclonedds.xml ~/turtlebot4_cyclonedds.xml

ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
ENV CYCLONEDDS_URI=~/turtlebot4_cyclonedds.xml
