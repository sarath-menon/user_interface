cmake_minimum_required(VERSION 3.20)
project(user_interface VERSION 0.1.0)
set(CMAKE_CXX_STANDARD 17) # Feel free to use whatever standard you want

###############################################################################
# Load external packages
###############################################################################

find_package(fastcdr REQUIRED)
find_package(fastrtps REQUIRED)

add_subdirectory(user_interface_app)
add_subdirectory(external)