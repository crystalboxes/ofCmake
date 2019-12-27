if (NOT OF_ROOT)
  if(EXISTS $ENV{OF_ROOT})
    set(OF_ROOT $ENV{OF_ROOT})
  elseif (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/apps AND EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/addons)
    set(OF_ROOT ${CMAKE_CURRENT_SOURCE_DIR})
  elseif(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/openFrameworks)
    set(OF_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/openFrameworks)
  else()
    message(FATAL_ERROR "Couldn't find openFrameworks. Set OF_ROOT environment variable or configure with -DOF_ROOT=... argument")
  endif()
endif()

set(OF_CMAKE_ROOT ${CMAKE_CURRENT_SOURCE_DIR} PARENT_SCOPE)

include(cmake/openFrameworksLib.cmake)
include(cmake/ofAddon.cmake)
include(cmake/ofApp.cmake)
