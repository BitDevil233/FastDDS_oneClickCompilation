#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fastrtps" for configuration "Debug"
set_property(TARGET fastrtps APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fastrtps PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfastrtps.so.2.8.0"
  IMPORTED_SONAME_DEBUG "libfastrtps.so.2.8"
  )

list(APPEND _cmake_import_check_targets fastrtps )
list(APPEND _cmake_import_check_files_for_fastrtps "${_IMPORT_PREFIX}/lib/libfastrtps.so.2.8.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
