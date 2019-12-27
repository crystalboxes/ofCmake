macro(subdirlist result curdir)
  file(GLOB children RELATIVE ${curdir} ${curdir}/*)
  set(dirlist "")
  foreach(child ${children})
    if(IS_DIRECTORY ${curdir}/${child})
      list(APPEND dirlist ${curdir}/${child})
    endif()
  endforeach()
  set(${result} ${dirlist})
endmacro()

macro(install_dlls target lookup_dir extension)
  file(GLOB dlls ${lookup_dir}/*.${extension})
  foreach(dll ${dlls})
    add_custom_command(TARGET ${target} POST_BUILD 
      COMMAND ${CMAKE_COMMAND} -E copy_if_different 
      ${dll} $<TARGET_FILE_DIR:${target}>) 
  endforeach()
endmacro()
