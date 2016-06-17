    sudo apt-get update
    sudo apt-get upgrade -y
    mkdir -p ws_moveit/src
    cd ws_moveit/src
    git clone https://github.com/davetcoleman/moveit.git
    rosdep install --from-paths . --ignore-src --rosdistro indigo
    catkin build
