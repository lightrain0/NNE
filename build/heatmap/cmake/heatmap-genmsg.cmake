# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "heatmap: 1 messages, 2 services")

set(MSG_I_FLAGS "-Iheatmap:/home/evan/share/coverage_path_ws/src/heatmap/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(heatmap_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv" NAME_WE)
add_custom_target(_heatmap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heatmap" "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv" ""
)

get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv" NAME_WE)
add_custom_target(_heatmap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heatmap" "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv" "heatmap/wifi_signal"
)

get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg" NAME_WE)
add_custom_target(_heatmap_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "heatmap" "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heatmap
)

### Generating Services
_generate_srv_cpp(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heatmap
)
_generate_srv_cpp(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv"
  "${MSG_I_FLAGS}"
  "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heatmap
)

### Generating Module File
_generate_module_cpp(heatmap
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heatmap
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(heatmap_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(heatmap_generate_messages heatmap_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv" NAME_WE)
add_dependencies(heatmap_generate_messages_cpp _heatmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv" NAME_WE)
add_dependencies(heatmap_generate_messages_cpp _heatmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg" NAME_WE)
add_dependencies(heatmap_generate_messages_cpp _heatmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heatmap_gencpp)
add_dependencies(heatmap_gencpp heatmap_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heatmap_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heatmap
)

### Generating Services
_generate_srv_lisp(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heatmap
)
_generate_srv_lisp(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv"
  "${MSG_I_FLAGS}"
  "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heatmap
)

### Generating Module File
_generate_module_lisp(heatmap
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heatmap
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(heatmap_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(heatmap_generate_messages heatmap_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv" NAME_WE)
add_dependencies(heatmap_generate_messages_lisp _heatmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv" NAME_WE)
add_dependencies(heatmap_generate_messages_lisp _heatmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg" NAME_WE)
add_dependencies(heatmap_generate_messages_lisp _heatmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heatmap_genlisp)
add_dependencies(heatmap_genlisp heatmap_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heatmap_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heatmap
)

### Generating Services
_generate_srv_py(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heatmap
)
_generate_srv_py(heatmap
  "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv"
  "${MSG_I_FLAGS}"
  "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heatmap
)

### Generating Module File
_generate_module_py(heatmap
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heatmap
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(heatmap_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(heatmap_generate_messages heatmap_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/interpolation_service.srv" NAME_WE)
add_dependencies(heatmap_generate_messages_py _heatmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/srv/signal_service.srv" NAME_WE)
add_dependencies(heatmap_generate_messages_py _heatmap_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/evan/share/coverage_path_ws/src/heatmap/msg/wifi_signal.msg" NAME_WE)
add_dependencies(heatmap_generate_messages_py _heatmap_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(heatmap_genpy)
add_dependencies(heatmap_genpy heatmap_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS heatmap_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heatmap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/heatmap
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(heatmap_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heatmap)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/heatmap
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(heatmap_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heatmap)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heatmap\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/heatmap
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(heatmap_generate_messages_py std_msgs_generate_messages_py)
endif()
