# Copyright 2016 Proyectos y Sistemas de Mantenimiento SL (eProsima).
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set(PROJECT_NAME fastcdr)
set(PROJECT_NAME_STYLED FastCDR)
set(PROJECT_NAME_UPPER FASTCDR)
set(PROJECT_VERSION_AUTOTOOLS 1:0:25)

if(${CPACK_GENERATOR} STREQUAL "TGZ" )
    if(${CPACK_TOPLEVEL_TAG} STREQUAL "Linux")
        # Define name of the TGZ file
        set(CPACK_PACKAGE_FILE_NAME eProsima_${PROJECT_NAME_STYLED}-1.0.25-Linux)
        set(CPACK_COMPONENTS_ALL headers sources)
        set(CPACK_ARCHIVE_COMPONENT_INSTALL ON)
        set(CPACK_COMPONENTS_ALL_IN_ONE_PACKAGE ON)

        # Include to prepare Makefiles
        include(/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/cmake/packaging/linux/autotools_generator.cmake) 

        # Prepare Makefile.am for autotools
        configure_file(/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/thirdparty/fastcdr/Makefile.am.in /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools/Makefile.am)

        # Prepare src/cpp/Makefile.am for autotools
        generate_sources_for_autotools()
        configure_file(/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/thirdparty/fastcdr/src/cpp/Makefile.am.in /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools/src/cpp/Makefile.am)

        # Prepare include/Makefile.am for autotools
        generate_public_headers_for_autotools()
        configure_file(/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/thirdparty/fastcdr/include/Makefile.am.in /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools/include/Makefile.am)

        # Define cmake script to copy autotools files.
        set(CPACK_INSTALL_SCRIPT "/home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/cmake/packaging/linux/AutotoolsPackaging.cmake")
    endif()
endif()
