# ofCmake
cmake scripts to compile openFrameworks projects

### Usage example
```
cmake_minimum_required(VERSION 3.12)
project(sketches)

# You can also set OF_ROOT environment variable or put openFrameworks directory near ofCmake
set(OF_ROOT "path/to/openFrameworks")

add_subdirectory(ofCmake)

# This will add an app in the current directory
ofApp(${CMAKE_CURRENT_SOURCE_DIR}/mySketch)

# Create or configure an app in the openFrameworks/apps directory
ofApp(mySketch2)

# Configure with addons
ofApp(existingApp ofxGui ofxSvg ofxAssimpModelLoader)
```

### Supported platforms
 - [x] Windows
 - [x] macOS
 - [ ] Linux
