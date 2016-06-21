![](http://moveit.ros.org/wordpress/wp-content/uploads/2014/01/moveit-title-small.png)

The MoveIt! Motion Planning Framework

This is the new unified repository for MoveIt! code. For more information about MoveIt! see [moveit.ros.org](moveit.ros.org).

Status:

 * [![Build Status](https://travis-ci.org/davetcoleman/moveit.svg)](https://travis-ci.org/davetcoleman/moveit) Travis - Continuous Integration
 * [![Build Status](http://build.ros.org/buildStatus/icon?job=Jsrc_uT__moveit__ubuntu_trusty__source)](http://build.ros.org/view/Jsrc_uT/job/Jsrc_uT__moveit__ubuntu_trusty__source/) ROS Buildfarm - Trusty Devel Source Build
 * [![Build Status](http://build.ros.org/buildStatus/icon?job=Jbin_uT64__moveit__ubuntu_trusty_amd64__binary)](http://build.ros.org/view/Jbin_uT64/job/Jbin_uT64__moveit__ubuntu_trusty_amd64__binary/) ROS Buildfarm - AMD64 Trusty Debian Build

## About The Merged Repos

The automated script for merging repos is located [here](https://github.com/davetcoleman/moveit_merge/tree/master). To copy your code changes on your own machine into the same unified structure, simply copy the previously separated packages as subfolders in this new unified repository.

Currently this repo build in Jade but will soon build in Kinetic

## Install

### Ubuntu Debian

> Note: this package has not been released yet

    sudo apt-get install ros-kinetic-moveit-desktop-full

### Build from Source

To build this package in a new workspace:  TODO switch to kinetic

    mkdir -p ws_moveit/src
    cd ws_moveit/src
    git clone https://github.com/davetcoleman/moveit.git
    rosdep install --from-paths . --ignore-src --rosdistro jade

## Build with Docker in a Container

After Docker is installed:

    docker run -it ros:jade
    wget https://raw.githubusercontent.com/davetcoleman/moveit_merge/master/test_in_docker.sh
    ./test_in_docker.sh

## Testing and Linting

To run [roslint](http://wiki.ros.org/roslint), use the following command with [catkin-tools](https://catkin-tools.readthedocs.org/):

    catkin build --no-status --no-deps --this --make-args roslint

To run [catkin lint](https://pypi.python.org/pypi/catkin_lint), use the following command with [catkin-tools](https://catkin-tools.readthedocs.org/):

    catkin lint -W2

There are currently no unit or integration tests for this package. If there were you would use the following command with [catkin-tools](https://catkin-tools.readthedocs.org/):

    catkin run_tests --no-deps --this -i

## Contribute

Please send PRs for new helper functions, fixes, etc!
