file(GLOB SRCS *.cpp)

add_library(tin_tools SHARED ${SRCS})
target_link_libraries(tin_tools saga_api)

install(TARGETS tin_tools 
	LIBRARY DESTINATION lib/saga)
