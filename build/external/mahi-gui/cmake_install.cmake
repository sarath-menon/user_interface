# Install script for directory: /Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/glfw/src/libglfw3.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libglfw3.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libglfw3.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libglfw3.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/glad/libglad.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libglad.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libglad.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libglad.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/nativefiledialog-extended/src/libnfd.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnfd.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnfd.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnfd.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/nanovg/libnanovg.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnanovg.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnanovg.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libnanovg.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/clipper/libclipper.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclipper.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclipper.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libclipper.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/libmahi-gui-d.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmahi-gui-d.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmahi-gui-d.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmahi-gui-d.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/glad/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/imgui/imconfig.h"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/imgui/imgui_internal.h"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/imgui/imgui.h"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/imgui/imstb_rectpack.h"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/imgui/imstb_textedit.h"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/imgui/imstb_truetype.h"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/imgui/imgui_stdlib.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/implot/implot.h"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/implot/implot_internal.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/nanovg/src/nanovg.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/nanosvg/src/nanosvg.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/external/mahi-gui/3rdparty/clipper/clipper.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mahi-gui/mahi-gui-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mahi-gui/mahi-gui-targets.cmake"
         "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/CMakeFiles/Export/lib/cmake/mahi-gui/mahi-gui-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mahi-gui/mahi-gui-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/mahi-gui/mahi-gui-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mahi-gui" TYPE FILE FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/CMakeFiles/Export/lib/cmake/mahi-gui/mahi-gui-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mahi-gui" TYPE FILE FILES "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/CMakeFiles/Export/lib/cmake/mahi-gui/mahi-gui-targets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/mahi-gui" TYPE FILE FILES
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/mahi-gui-config.cmake"
    "/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/mahi-gui-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/glfw/cmake_install.cmake")
  include("/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/glad/cmake_install.cmake")
  include("/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/nativefiledialog-extended/cmake_install.cmake")
  include("/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/nanovg/cmake_install.cmake")
  include("/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/3rdparty/clipper/cmake_install.cmake")
  include("/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/_deps/mahi-util-build/cmake_install.cmake")
  include("/Users/sarathmenon/Desktop/eth_soft/code/gui user interface/user_interface/build/external/mahi-gui/src/Mahi/Gui/cmake_install.cmake")

endif()

