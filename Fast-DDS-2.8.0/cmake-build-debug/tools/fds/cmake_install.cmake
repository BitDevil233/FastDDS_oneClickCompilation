# Install script for directory: /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/tools/fds

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "discovery" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fast-discovery-serverd-1.0.1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fast-discovery-serverd-1.0.1")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fast-discovery-serverd-1.0.1"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/tools/fds/fast-discovery-serverd-1.0.1")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fast-discovery-serverd-1.0.1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fast-discovery-serverd-1.0.1")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fast-discovery-serverd-1.0.1"
         OLD_RPATH "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/src/cpp:/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/src/cpp:/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/memory/src:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/fast-discovery-serverd-1.0.1")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "cmake" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fast-discovery-server-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fast-discovery-server-targets.cmake"
         "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/tools/fds/CMakeFiles/Export/c96f171e5a3ff9214735fc841243948a/fast-discovery-server-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fast-discovery-server-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake/fast-discovery-server-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake" TYPE FILE FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/tools/fds/CMakeFiles/Export/c96f171e5a3ff9214735fc841243948a/fast-discovery-server-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fastrtps/cmake" TYPE FILE FILES "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/tools/fds/CMakeFiles/Export/c96f171e5a3ff9214735fc841243948a/fast-discovery-server-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "discovery" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND bash -c "if [[ -h fast-discovery-server ]]; then rm fast-discovery-server; fi;  ln -s fast-discovery-serverd-1.0.1 fast-discovery-server" WORKING_DIRECTORY "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/../install/bin")
endif()
