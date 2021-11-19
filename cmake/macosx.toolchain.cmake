set( CMAKE_SYSTEM_NAME Darwin )
set( SDK macosx CACHE STRING "Xcode SDK" )

set( CMAKE_OSX_ARCHITECTURES x86_64 CACHE STRING "Architectures" )

include( ${CMAKE_CURRENT_LIST_DIR}/toolchain-support-apple.cmake )

