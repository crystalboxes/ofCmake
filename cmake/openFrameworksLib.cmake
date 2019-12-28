if (MSVC)
  set(CXX_FLAGS "${CMAKE_CXX_FLAGS} /MP /wd4267 /wd4996 /wd4477 /wd4101 /wd4996")
  set(CMAKE_CXX_FLAGS ${CXX_FLAGS} PARENT_SCOPE)
  set(CMAKE_CXX_FLAGS ${CXX_FLAGS})
endif()

set(OF_SOURCES 
  ${OF_ROOT}/libs/openFrameworks/3d/of3dPrimitives.h
  ${OF_ROOT}/libs/openFrameworks/3d/of3dUtils.h
  ${OF_ROOT}/libs/openFrameworks/3d/ofCamera.h
  ${OF_ROOT}/libs/openFrameworks/3d/ofEasyCam.h
  ${OF_ROOT}/libs/openFrameworks/3d/ofMesh.h
  ${OF_ROOT}/libs/openFrameworks/3d/ofNode.h

  ${OF_ROOT}/libs/openFrameworks/app/ofAppBaseWindow.h
  ${OF_ROOT}/libs/openFrameworks/app/ofAppGLFWWindow.h
  ${OF_ROOT}/libs/openFrameworks/app/ofAppNoWindow.h
  ${OF_ROOT}/libs/openFrameworks/app/ofBaseApp.h
  ${OF_ROOT}/libs/openFrameworks/app/ofMainLoop.h
  ${OF_ROOT}/libs/openFrameworks/app/ofWindowSettings.h

  ${OF_ROOT}/libs/openFrameworks/events/ofEvent.h

  ${OF_ROOT}/libs/openFrameworks/gl/ofBufferObject.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofFbo.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofGLBaseTypes.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofGLRenderer.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofGLUtils.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofLight.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofMaterial.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofGLProgrammableRenderer.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofShader.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofTexture.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofVbo.h
  ${OF_ROOT}/libs/openFrameworks/gl/ofVboMesh.h

  ${OF_ROOT}/libs/openFrameworks/graphics/of3dGraphics.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofBitmapFont.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofCairoRenderer.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofGraphics.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofGraphicsBaseTypes.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofGraphicsConstants.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofImage.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofPath.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofPixels.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofPolyline.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofRendererCollection.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofTessellator.h
  ${OF_ROOT}/libs/openFrameworks/graphics/ofTrueTypeFont.h

  ${OF_ROOT}/libs/openFrameworks/math/ofMath.h
  ${OF_ROOT}/libs/openFrameworks/math/ofMathConstants.h
  ${OF_ROOT}/libs/openFrameworks/math/ofMatrix3x3.h
  ${OF_ROOT}/libs/openFrameworks/math/ofMatrix4x4.h
  ${OF_ROOT}/libs/openFrameworks/math/ofQuaternion.h
  ${OF_ROOT}/libs/openFrameworks/math/ofVec2f.h
  ${OF_ROOT}/libs/openFrameworks/math/ofVec3f.h
  ${OF_ROOT}/libs/openFrameworks/math/ofVec4f.h
  ${OF_ROOT}/libs/openFrameworks/math/ofVectorMath.h

  ${OF_ROOT}/libs/openFrameworks/ofMain.h

  ${OF_ROOT}/libs/openFrameworks/app/ofAppRunner.h

  ${OF_ROOT}/libs/openFrameworks/sound/ofFmodSoundPlayer.h
  ${OF_ROOT}/libs/openFrameworks/sound/ofRtAudioSoundStream.h
  ${OF_ROOT}/libs/openFrameworks/sound/ofSoundBaseTypes.h
  ${OF_ROOT}/libs/openFrameworks/sound/ofSoundPlayer.h
  ${OF_ROOT}/libs/openFrameworks/sound/ofSoundStream.h

  ${OF_ROOT}/libs/openFrameworks/types/ofParameter.h
  ${OF_ROOT}/libs/openFrameworks/types/ofParameterGroup.h
  ${OF_ROOT}/libs/openFrameworks/types/ofColor.h
  ${OF_ROOT}/libs/openFrameworks/types/ofPoint.h
  ${OF_ROOT}/libs/openFrameworks/types/ofRectangle.h
  ${OF_ROOT}/libs/openFrameworks/types/ofTypes.h

  ${OF_ROOT}/libs/openFrameworks/utils/ofConstants.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofFileUtils.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofFpsCounter.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofJson.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofLog.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofMatrixStack.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofNoise.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofSystemUtils.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofThread.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofThreadChannel.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofTimer.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofURLFileLoader.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofUtils.h
  ${OF_ROOT}/libs/openFrameworks/utils/ofXml.h

  ${OF_ROOT}/libs/openFrameworks/video/ofDirectShowGrabber.h
  ${OF_ROOT}/libs/openFrameworks/video/ofDirectShowPlayer.h
  ${OF_ROOT}/libs/openFrameworks/video/ofVideoBaseTypes.h
  ${OF_ROOT}/libs/openFrameworks/video/ofVideoGrabber.h
  ${OF_ROOT}/libs/openFrameworks/video/ofVideoPlayer.h

  ${OF_ROOT}/libs/openFrameworks/communication/ofArduino.h
  ${OF_ROOT}/libs/openFrameworks/communication/ofSerial.h

  ${OF_ROOT}/libs/openFrameworks/events/ofEvents.h
  ${OF_ROOT}/libs/openFrameworks/events/ofEventUtils.h

  ${OF_ROOT}/libs/openFrameworks/3d/of3dPrimitives.cpp
  ${OF_ROOT}/libs/openFrameworks/3d/of3dUtils.cpp
  ${OF_ROOT}/libs/openFrameworks/3d/ofCamera.cpp
  ${OF_ROOT}/libs/openFrameworks/3d/ofEasyCam.cpp
  ${OF_ROOT}/libs/openFrameworks/3d/ofNode.cpp

  ${OF_ROOT}/libs/openFrameworks/app/ofAppGLFWWindow.cpp
  ${OF_ROOT}/libs/openFrameworks/app/ofAppNoWindow.cpp
  ${OF_ROOT}/libs/openFrameworks/app/ofAppRunner.cpp
  ${OF_ROOT}/libs/openFrameworks/app/ofBaseApp.cpp
  ${OF_ROOT}/libs/openFrameworks/app/ofMainLoop.cpp

  ${OF_ROOT}/libs/openFrameworks/events/ofEvents.cpp

  ${OF_ROOT}/libs/openFrameworks/gl/ofBufferObject.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofFbo.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofGLRenderer.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofGLUtils.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofLight.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofMaterial.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofGLProgrammableRenderer.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofShader.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofTexture.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofVbo.cpp
  ${OF_ROOT}/libs/openFrameworks/gl/ofVboMesh.cpp

  ${OF_ROOT}/libs/openFrameworks/graphics/of3dGraphics.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofBitmapFont.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofCairoRenderer.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofGraphics.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofGraphicsBaseTypes.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofImage.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofPath.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofPixels.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofRendererCollection.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofTessellator.cpp
  ${OF_ROOT}/libs/openFrameworks/graphics/ofTrueTypeFont.cpp

  ${OF_ROOT}/libs/openFrameworks/math/ofMath.cpp
  ${OF_ROOT}/libs/openFrameworks/math/ofMatrix3x3.cpp
  ${OF_ROOT}/libs/openFrameworks/math/ofMatrix4x4.cpp
  ${OF_ROOT}/libs/openFrameworks/math/ofQuaternion.cpp
  ${OF_ROOT}/libs/openFrameworks/math/ofVec2f.cpp
  ${OF_ROOT}/libs/openFrameworks/math/ofVec4f.cpp

  ${OF_ROOT}/libs/openFrameworks/sound/ofFmodSoundPlayer.cpp
  ${OF_ROOT}/libs/openFrameworks/sound/ofRtAudioSoundStream.cpp
  ${OF_ROOT}/libs/openFrameworks/sound/ofSoundBaseTypes.cpp
  ${OF_ROOT}/libs/openFrameworks/sound/ofSoundBuffer.cpp
  ${OF_ROOT}/libs/openFrameworks/sound/ofSoundPlayer.cpp
  ${OF_ROOT}/libs/openFrameworks/sound/ofSoundStream.cpp

  ${OF_ROOT}/libs/openFrameworks/types/ofBaseTypes.cpp
  ${OF_ROOT}/libs/openFrameworks/types/ofColor.cpp
  ${OF_ROOT}/libs/openFrameworks/types/ofParameter.cpp
  ${OF_ROOT}/libs/openFrameworks/types/ofParameterGroup.cpp
  ${OF_ROOT}/libs/openFrameworks/types/ofRectangle.cpp

  ${OF_ROOT}/libs/openFrameworks/utils/ofFileUtils.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofFpsCounter.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofLog.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofMatrixStack.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofSystemUtils.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofThread.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofTimer.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofURLFileLoader.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofUtils.cpp
  ${OF_ROOT}/libs/openFrameworks/utils/ofXml.cpp

  ${OF_ROOT}/libs/openFrameworks/video/ofDirectShowGrabber.cpp
  ${OF_ROOT}/libs/openFrameworks/video/ofDirectShowPlayer.cpp
  ${OF_ROOT}/libs/openFrameworks/video/ofVideoGrabber.cpp
  ${OF_ROOT}/libs/openFrameworks/video/ofVideoPlayer.cpp

  ${OF_ROOT}/libs/openFrameworks/communication/ofArduino.cpp
  ${OF_ROOT}/libs/openFrameworks/communication/ofSerial.cpp  
)

add_library(openFrameworksLib STATIC ${OF_SOURCES})
set_target_properties(openFrameworksLib PROPERTIES LINKER_LANGUAGE CXX)
target_include_directories(openFrameworksLib PUBLIC
  ${OF_ROOT}/libs/openFrameworks
  ${OF_ROOT}/libs/openFrameworks/graphics
  ${OF_ROOT}/libs/openFrameworks/app
  ${OF_ROOT}/libs/openFrameworks/sound
  ${OF_ROOT}/libs/openFrameworks/utils
  ${OF_ROOT}/libs/openFrameworks/communication
  ${OF_ROOT}/libs/openFrameworks/video
  ${OF_ROOT}/libs/openFrameworks/types
  ${OF_ROOT}/libs/openFrameworks/math
  ${OF_ROOT}/libs/openFrameworks/3d
  ${OF_ROOT}/libs/openFrameworks/gl
  ${OF_ROOT}/libs/openFrameworks/events

  ${OF_ROOT}/libs/glut/include
  ${OF_ROOT}/libs/glm/include
  ${OF_ROOT}/libs/rtAudio/include
  ${OF_ROOT}/libs/quicktime/include
  ${OF_ROOT}/libs/freetype/include
  ${OF_ROOT}/libs/freetype/include/freetype2
  ${OF_ROOT}/libs/freeImage/include
  ${OF_ROOT}/libs/fmodex/include
  ${OF_ROOT}/libs/videoInput/include
  ${OF_ROOT}/libs/glew/include/
  ${OF_ROOT}/libs/glu/include
  ${OF_ROOT}/libs/tess2/include
  ${OF_ROOT}/libs/cairo/include/cairo
  ${OF_ROOT}/libs/poco/include
  ${OF_ROOT}/libs/glfw/include
  ${OF_ROOT}/libs/openssl/include
  ${OF_ROOT}/libs/utf8/include
  ${OF_ROOT}/libs/boost/include
  ${OF_ROOT}/libs/json/include
  ${OF_ROOT}/libs/curl/include
  ${OF_ROOT}/libs/uriparser/include
  ${OF_ROOT}/libs/pugixml/include
  ${OF_ROOT}/addons
)

target_compile_definitions(openFrameworksLib PUBLIC
  WIN32
  CURL_STATICLIB
  _CONSOLE
  POCO_STATIC
  CAIRO_WIN32_STATIC_BUILD
  DISABLE_SOME_FLOATING_POINT
  _UNICODE
  UNICODE
)

set(OF_LIB_DIRS
  ${OF_ROOT}/libs/glfw/lib/vs/x64
  ${OF_ROOT}/libs/rtAudio/lib/vs/x64
  ${OF_ROOT}/libs/FreeImage/lib/vs/x64
  ${OF_ROOT}/libs/freetype/lib/vs/x64
  ${OF_ROOT}/libs/fmodex/lib/vs/x64
  ${OF_ROOT}/libs/videoInput/lib/vs/x64
  ${OF_ROOT}/libs/cairo/lib/vs/x64
  ${OF_ROOT}/libs/glew/lib/vs/x64
  ${OF_ROOT}/libs/glu/lib/vs/x64
  ${OF_ROOT}/libs/openssl/lib/vs/x64
  ${OF_ROOT}/libs/curl/lib/vs/x64
  ${OF_ROOT}/libs/tess2/lib/vs/x64
  ${OF_ROOT}/libs/boost/lib/vs/x64
  ${OF_ROOT}/libs/uriparser/lib/vs/x64
  ${OF_ROOT}/libs/pugixml/lib/vs/x64
)


target_link_directories(openFrameworksLib PUBLIC ${OF_LIB_DIRS})

set(OF_STATIC_LIBS
  cairo-static.lib
  pixman-1.lib
  libpng.lib
  zlib.lib
  msimg32.lib
  OpenGL32.lib
  kernel32.lib
  setupapi.lib
  Vfw32.lib
  comctl32.lib
  rtAudioD.lib
  videoInputD.lib
  libfreetype.lib
  FreeImage.lib
  dsound.lib
  user32.lib
  gdi32.lib
  winspool.lib
  comdlg32.lib
  advapi32.lib
  shell32.lib
  ole32.lib
  oleaut32.lib
  uuid.lib
  glew32s.lib
  fmodex64_vc.lib
  libssl.lib
  libcrypto.lib
  crypt32.lib
  libcurl.lib
  uriparser.lib
  Ws2_32.lib
  tess2.lib
  glfw3.lib
  winmm.lib
  odbc32.lib
  odbccp32.lib
  wldap32.lib
)

target_link_libraries(openFrameworksLib 
  debug pugixmld.lib ${OF_STATIC_LIBS}
  optimized pugixml.lib ${OF_STATIC_LIBS}
)

set(OF_LIB_DIRS_PARENT ${OF_LIB_DIRS} PARENT_SCOPE)

include(cmake/helpers.cmake)
macro (copy_of_dlls target)
  foreach(libdir ${OF_LIB_DIRS_PARENT})
    install_dlls(${target} ${libdir} dll)
  endforeach()
endmacro()
