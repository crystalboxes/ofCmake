function(ofApp APP_PATH) # addons
  set (addons ${ARGN})
  string(REPLACE "/" ";" app_path_list ${APP_PATH})
  list(GET app_path_list -1 app_name)

  if (EXISTS ${APP_PATH})
    set(APP_DIR ${APP_PATH})
  else()
    set(APP_DIR ${OF_ROOT}/apps/${APP_PATH})
    if (NOT EXISTS ${APP_DIR})
      list(LENGTH app_path_list app_path_count)
      if (${app_path_count} GREATER 1)
        list(REMOVE_AT app_path_list -1)
        list(GET app_path_list 0 first_dir)
        list(REMOVE_AT app_path_list 0)
        set(app_path_full ${first_dir})

        if (NOT EXISTS ${app_path_full})
          message(FATAL_ERROR "Directory ${app_path_full} doesn't exist.")
        endif()
        set(APP_DIR ${APP_PATH})
      else()
        set(APP_DIR ${OF_ROOT}/apps/${app_name})
      endif()
    endif()
  endif()

  if (NOT EXISTS ${APP_DIR})
    message(STATUS "Couldn't find app: ${app_name}. Creating new from a template.")
    file(MAKE_DIRECTORY ${APP_DIR})
  endif()

  if (NOT EXISTS ${APP_DIR}/bin)
    file(MAKE_DIRECTORY ${APP_DIR}/bin)
  endif()
  
  if (NOT EXISTS ${APP_DIR}/bin/data)
    file(MAKE_DIRECTORY ${APP_DIR}/bin/data)
    file(WRITE ${APP_DIR}/bin/data/.gitkeep "")
    endif()

  if (NOT EXISTS ${APP_DIR}/src)
    file(MAKE_DIRECTORY ${APP_DIR}/src)
    configure_file(${OF_CMAKE_ROOT}/cmake/template/ofApp.h.in ${APP_DIR}/src/ofApp.h)
    configure_file(${OF_CMAKE_ROOT}/cmake/template/ofApp.cpp.in ${APP_DIR}/src/ofApp.cpp)
    configure_file(${OF_CMAKE_ROOT}/cmake/template/main.cpp.in ${APP_DIR}/src/main.cpp)
  endif()

  file(GLOB_RECURSE SOURCES 
    ${APP_DIR}/*.h
    ${APP_DIR}/*.hpp
    ${APP_DIR}/*.cc
    ${APP_DIR}/*.c
    ${APP_DIR}/*.cpp
  )

  add_executable(${app_name} ${SOURCES})
  foreach(addon ${addons})
    ofAddon(${app_name} ${addon})
  endforeach()
  copy_of_dlls(${app_name})
  set_target_properties(${app_name}
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY_DEBUG "${APP_DIR}/bin"
    LIBRARY_OUTPUT_DIRECTORY_DEBUG "${APP_DIR}/bin"
    RUNTIME_OUTPUT_DIRECTORY_DEBUG "${APP_DIR}/bin"

    ARCHIVE_OUTPUT_DIRECTORY_RELEASE "${APP_DIR}/bin"
    LIBRARY_OUTPUT_DIRECTORY_RELEASE "${APP_DIR}/bin"
    RUNTIME_OUTPUT_DIRECTORY_RELEASE "${APP_DIR}/bin"
  )
  target_link_libraries(${app_name} general openFrameworksLib)
  target_include_directories(${app_name} PUBLIC ${APP_DIR}/src)
  set_target_properties(${app_name} PROPERTIES OUTPUT_NAME_DEBUG ${app_name}_debug)

  if (WIN32)
    set_target_properties(${app_name} PROPERTIES LINK_FLAGS "/ignore:4099")
    if (CMAKE_BUILD_TYPE EQUAL Debug)
      set(ICON ${OF_ROOT}/libs/openFrameworksCompiled/project/msys2/icon-debug.ico)
    else()
      set(ICON ${OF_ROOT}/libs/openFrameworksCompiled/project/msys2/icon.ico)
    endif()
    set_property(TARGET ${app_name} PROPERTY VS_GLOBAL_ApplicationIcon ${ICON})
  endif()
endfunction()
