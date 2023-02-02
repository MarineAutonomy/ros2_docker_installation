docker run -it --rm --device=/dev/ttyUSB0 --name matsya_ros2 \
    --net=host \
    --env="DISPLAY" \
    --workdir="/home/docker/colcon_ws" \
    --volume=$(pwd)/colcon_ws:"/home/docker/colcon_ws" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    abhilashiit/matsya_ros2:1.0 bash