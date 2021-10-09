cmake_minimum_required(VERSION 3.16)

get_filename_component(PROJECT_NAME ${CMAKE_CURRENT_LIST_DIR} NAME)
project(${PROJECT_NAME})

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# put all executables to bin directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_DEBUG_POSTFIX d)

set(QT Core Widgets Quick QuickControls2)
find_package(Qt5 COMPONENTS ${QT} REQUIRED)

file(GLOB srcs *.cpp *.qrc)
if(WIN32)
  add_executable(${PROJECT_NAME} WIN32 ${srcs})
else()
  add_executable(${PROJECT_NAME} ${srcs})
endif()

foreach(lib ${QT})
    target_link_libraries(${PROJECT_NAME} Qt5::${lib})
endforeach()

if(CMAKE_BUILD_TYPE STREQUAL Debug)
  set(build_type debug)
else()
  set(build_type release)
endif()

# Get the installation directory from qmake
get_target_property(QMAKE_BIN Qt5::qmake IMPORTED_LOCATION)
get_filename_component(QMAKE_BIN_DIR ${QMAKE_BIN} DIRECTORY)
set(windeployqt ${QMAKE_BIN_DIR}/windeployqt.exe)

add_custom_target(deploy_${PROJECT_NAME}
  COMMAND ${windeployqt} --${build_type}
  --verbose 2
  --pdb
  --qmldir ${CMAKE_CURRENT_LIST_DIR}
  --no-translations
  --no-system-d3d-compiler
  --no-compiler-runtime
  ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/${PROJECT_NAME}.exe
  COMMENT "Call windeployqt on ${PROJECT_NAME}"
)