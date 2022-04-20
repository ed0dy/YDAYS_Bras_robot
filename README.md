# Projet YDAYS Bras robot

## OS : Ubuntu 20.04

## ROS : Noetic
http://wiki.ros.org/noetic/Installation/Ubuntu

## Moveit :
https://ros-planning.github.io/moveit_tutorials/doc/getting_started/getting_started.html

Il n'est pas nécessaire de recrée un workspace entier il faut juste mettre à jour le workspace : ~/YDAYS_Bras_robot/ws_moveit/src/

Build :

catkin build

## Instalation :

Copie des fichiers .STL dans le répertoire d'instalation de ROS :
sudo cp * YDAYS_Bras_robot/ws_moveit/src/ros-moveit-arm/my_arm_xacro/meshes /opt/ros/noetic/share/urdf_tutorial/meshes/

Moveit Setup assistant :

roslaunch moveit_setup_assistant setup_assistant.launch

Edit Existing Moveit Configuration Package
Location : ~/YDAYS_Bras_robot/ws_moveit/src/ros-moveit-arm/my_arm_xacro
Load Files
Menu : Configuration Files > Generate Package
Exit setup Assistant

catkin build

Lancer Rviz :

roslaunch my_arm_xacro demo.launch rviz_tutorial:=true

## TO DO :

Ajouter un plugin de kinematics

Ajouter la pince

## ros-moveit-arm

Code et fichiers 3D pour le bras robot / ROS and MoveIt
