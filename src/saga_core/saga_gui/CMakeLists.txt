file(GLOB SRCS *.cpp wx/propgrid/*.cpp)
include_directories(${CMAKE_CURRENT_SOURCE_DIR})
add_definitions(-DMODULE_LIBRARY_PATH=\"${CMAKE_INSTALL_PREFIX}/lib/saga\")
add_executable(saga_gui ${SRCS})
target_link_libraries(saga_gui saga_api saga_gdi saga_cmd saga_odbc ${wxWidgets_LIBRARIES} -lodbc)

install(TARGETS saga_gui 
	RUNTIME DESTINATION bin)
