execute_process(COMMAND "/home/jean-pascal/YDAYS_Bras_robot/ws_moveit/build/moveit_ros_visualization/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jean-pascal/YDAYS_Bras_robot/ws_moveit/build/moveit_ros_visualization/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
