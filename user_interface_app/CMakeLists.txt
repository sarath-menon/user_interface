#######################################
# User interface app

add_executable(user_interface_app
src/user_interface.cpp
)

target_link_libraries(user_interface_app PUBLIC 
fastcdr 
fastrtps
msg_lib
mahi::gui
vicon_comm_lib 
)

target_include_directories(user_interface_app PUBLIC include)
