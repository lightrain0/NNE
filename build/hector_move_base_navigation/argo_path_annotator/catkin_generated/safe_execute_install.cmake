execute_process(COMMAND "/home/evan/share/coverage_path_ws/build/hector_move_base_navigation/argo_path_annotator/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/evan/share/coverage_path_ws/build/hector_move_base_navigation/argo_path_annotator/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
