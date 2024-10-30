# Install script for directory: /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/src/cpp

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/../install")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/include/fastrtps" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.ipp$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/include/fastdds" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.ipp$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fastrtps" TYPE FILE FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/include/fastrtps/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfastrtps.so.2.8.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfastrtps.so.2.8"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/src/cpp/libfastrtps.so.2.8.0"
    "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/src/cpp/libfastrtps.so.2.8"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfastrtps.so.2.8.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfastrtps.so.2.8"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/src/cpp:/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/memory/src:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "libraries" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/src/cpp/libfastrtps.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cmake" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fastrtps-dynamic-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fastrtps-dynamic-targets.cmake"
         "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/src/cpp/CMakeFiles/Export/c96f171e5a3ff9214735fc841243948a/fastrtps-dynamic-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fastrtps-dynamic-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fastrtps-dynamic-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake" TYPE FILE FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/src/cpp/CMakeFiles/Export/c96f171e5a3ff9214735fc841243948a/fastrtps-dynamic-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake" TYPE FILE FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/src/cpp/CMakeFiles/Export/c96f171e5a3ff9214735fc841243948a/fastrtps-dynamic-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cmake" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake" TYPE FILE FILES
    "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/cmake/config/fastrtps-config.cmake"
    "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/cmake/config/fastrtps-config-version.cmake"
    )
endif()

