# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6...3.19)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget mahi::fmt mahi::util)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Create imported target mahi::fmt
add_library(mahi::fmt STATIC IMPORTED)

set_target_properties(mahi::fmt PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "FMT_LOCALE"
  INTERFACE_COMPILE_FEATURES "cxx_variadic_templates"
  INTERFACE_INCLUDE_DIRECTORIES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/_deps/mahi-util-src/3rdparty/fmt/include"
)

# Create imported target mahi::util
add_library(mahi::util STATIC IMPORTED)

set_target_properties(mahi::util PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "MAHI_UTIL;MAHI_COROUTINES;MAHI_DEFAULT_LOG;MAHI_LOG_CAPTURE_FILE"
  INTERFACE_COMPILE_FEATURES "cxx_std_11"
  INTERFACE_COMPILE_OPTIONS "-fcoroutines-ts"
  INTERFACE_INCLUDE_DIRECTORIES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/_deps/mahi-util-src/include;/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/_deps/mahi-util-src/3rdparty/json/include;/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/_deps/mahi-util-src/3rdparty/cxxopts/include"
  INTERFACE_LINK_LIBRARIES "mahi::fmt;pthread"
)

# Import target "mahi::fmt" for configuration "Debug"
set_property(TARGET mahi::fmt APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mahi::fmt PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/_deps/mahi-util-build/3rdparty/fmt/libfmtd.a"
  )

# Import target "mahi::util" for configuration "Debug"
set_property(TARGET mahi::util APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mahi::util PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/_deps/mahi-util-build/libmahi-util-d.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)