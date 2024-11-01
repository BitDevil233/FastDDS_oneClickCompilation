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

# Copy configure.ac
file(INSTALL /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/thirdparty/fastcdr/configure.ac
    DESTINATION /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools
    )

# Copy m4 diretory
file(INSTALL /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/thirdparty/fastcdr/m4
    DESTINATION /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools
    )

# Create include/fastcdr
file(MAKE_DIRECTORY /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools/include/fastcdr)

# Run autoreconf
execute_process(COMMAND autoreconf -fi /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools
    RESULT_VARIABLE EXECUTE_RESULT)

if(NOT EXECUTE_RESULT EQUAL 0)
    message(FATAL_ERROR "Failed the execution of autoreconf")
endif()

# Copy include/fastcdr/config.h.in
file(INSTALL /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/thirdparty/fastcdr/include/fastcdr/config.h.in
    DESTINATION /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools/include/fastcdr
    )

# Copy licenses
file(INSTALL /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/thirdparty/fastcdr/LICENSE
    DESTINATION /home/zhouancaho/Downloads/fast-dds-oneKeyCompile/Fast-DDS-2.8.0/cmake-build-debug/thirdparty/fastcdr/autotools
    )
