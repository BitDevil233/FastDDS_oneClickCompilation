#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "fastcdr" for configuration "Debug"
set_property(TARGET fastcdr APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(fastcdr PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfastcdr.so.1.0.25"
  IMPORTED_SONAME_DEBUG "libfastcdr.so.1"
  )

list(APPEND _cmake_import_check_targets fastcdr )
list(APPEND _cmake_import_check_files_for_fastcdr "${_IMPORT_PREFIX}/lib/libfastcdr.so.1.0.25" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
