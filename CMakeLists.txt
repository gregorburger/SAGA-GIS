cmake_minimum_required(VERSION 2.6)

find_package(SWIG)
include(${SWIG_USE_FILE})

find_package(PythonLibs)

find_package(wxWidgets COMPONENTS base core xml html adv aui REQUIRED)
include(${wxWidgets_USE_FILE})

include_directories(src/saga_core ${wxWidgets_INCLUDE_DIRS})

add_definitions(-D_SAGA_LINUX -D_SAGA_UNICODE -D_TYPEDEF_BYTE -D_TYPEDEF_WORD -D_SAGA_API_EXPORTS -D_SAGA_DONOTUSE_HARU)

add_subdirectory(src/saga_core)

add_subdirectory(src/modules)
