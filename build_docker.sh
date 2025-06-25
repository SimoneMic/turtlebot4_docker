 #!/bin/bash         
cd $PWD
docker build . -t simonemiche/turtlebot4:humble -f Dockerfile
