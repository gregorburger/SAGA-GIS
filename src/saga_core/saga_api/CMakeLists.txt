file(GLOB SRCS *.cpp)

add_library(saga_api SHARED ${SRCS})

install(TARGETS saga_api
	LIBRARY DESTINATION lib)
