#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "foonathan_memory" for configuration "Debug"
set_property(TARGET foonathan_memory APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(foonathan_memory PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libfoonathan_memory-0.7.2-dbg.so"
  IMPORTED_SONAME_DEBUG "libfoonathan_memory-0.7.2-dbg.so"
  )

list(APPEND _cmake_import_check_targets foonathan_memory )
list(APPEND _cmake_import_check_files_for_foonathan_memory "${_IMPORT_PREFIX}/lib/libfoonathan_memory-0.7.2-dbg.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
