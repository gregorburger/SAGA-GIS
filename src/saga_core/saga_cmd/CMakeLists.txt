file(GLOB SRCS *.cpp)
add_definitions(-DMODULE_LIBRARY_PATH=\"${CMAKE_INSTALL_PREFIX}/lib/saga\")
add_library(saga_cmd ${SRCS})
