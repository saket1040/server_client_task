# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "msg_serv: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(msg_serv_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv" NAME_WE)
add_custom_target(_msg_serv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "msg_serv" "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(msg_serv
  "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_serv
)

### Generating Module File
_generate_module_cpp(msg_serv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_serv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(msg_serv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(msg_serv_generate_messages msg_serv_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv" NAME_WE)
add_dependencies(msg_serv_generate_messages_cpp _msg_serv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_serv_gencpp)
add_dependencies(msg_serv_gencpp msg_serv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_serv_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(msg_serv
  "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_serv
)

### Generating Module File
_generate_module_eus(msg_serv
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_serv
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(msg_serv_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(msg_serv_generate_messages msg_serv_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv" NAME_WE)
add_dependencies(msg_serv_generate_messages_eus _msg_serv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_serv_geneus)
add_dependencies(msg_serv_geneus msg_serv_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_serv_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(msg_serv
  "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_serv
)

### Generating Module File
_generate_module_lisp(msg_serv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_serv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(msg_serv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(msg_serv_generate_messages msg_serv_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv" NAME_WE)
add_dependencies(msg_serv_generate_messages_lisp _msg_serv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_serv_genlisp)
add_dependencies(msg_serv_genlisp msg_serv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_serv_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(msg_serv
  "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_serv
)

### Generating Module File
_generate_module_nodejs(msg_serv
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_serv
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(msg_serv_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(msg_serv_generate_messages msg_serv_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv" NAME_WE)
add_dependencies(msg_serv_generate_messages_nodejs _msg_serv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_serv_gennodejs)
add_dependencies(msg_serv_gennodejs msg_serv_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_serv_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(msg_serv
  "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_serv
)

### Generating Module File
_generate_module_py(msg_serv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_serv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(msg_serv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(msg_serv_generate_messages msg_serv_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/saket1004/catkin_ws2/src/msg_serv/srv/MulTwoInts.srv" NAME_WE)
add_dependencies(msg_serv_generate_messages_py _msg_serv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(msg_serv_genpy)
add_dependencies(msg_serv_genpy msg_serv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS msg_serv_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_serv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/msg_serv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(msg_serv_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_serv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/msg_serv
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(msg_serv_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_serv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/msg_serv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(msg_serv_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_serv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/msg_serv
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(msg_serv_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_serv)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_serv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/msg_serv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(msg_serv_generate_messages_py std_msgs_generate_messages_py)
endif()
