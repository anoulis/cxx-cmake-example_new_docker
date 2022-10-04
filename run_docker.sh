#! /bin/bash
# xhost +

# if [ $# -gt 0 ];then
#   my_home=$1
# else
#   my_home=$HOME      
# fi


# echo ""
# echo "Starting Docker"
# echo ""
# docker run -it --rm \
# --privileged=True \
# --net=host \
# --env DISPLAY=${DISPLAY} \
# --env="QT_X11_NO_MITSHM=1" \
# -e "TERM=xterm-256color" \
# --env NVIDIA_DISABLE_REQUIRE=1 \
# --env NVIDIA_VISIBLE_DEVICES=0 \
# --env NVIDIA_DRIVER_CAPABILITIES=all \
# --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \

# # --entrypoint "/home/tii/startup.sh" \
# docker_simulation $SHELL


docker run -it --rm \
    --privileged \
    --volume="/home/$USER/git/external/cxx-cmake-example:/home/paok/cxx-cmake-example:rw" \
    --workdir="/home/paok/cxx-cmake-example/build" \
    --network host \
    rust_in_cpp