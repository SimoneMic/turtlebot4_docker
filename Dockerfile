FROM osrf/ros:humble-desktop-full

RUN sudo apt update && sudo apt install ros-humble-rmw-cyclonedds-cpp -y

RUN useradd -l -u 33334 -G sudo -md /home/turtlebot4_docker -s /bin/bash -p turtlebot4_docker turtlebot4_docker &&     sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
ENV USERNAME turtlebot4_docker
USER $USERNAME
WORKDIR /home/$USERNAME
RUN sudo apt install terminator gedit locate net-tools -y && sudo updatedb

COPY turtlebot4_cyclonedds.xml /home/$USERNAME/turtlebot4_cyclonedds.xml

ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
ENV CYCLONEDDS_URI=/home/$USERNAME/turtlebot4_cyclonedds.xml
