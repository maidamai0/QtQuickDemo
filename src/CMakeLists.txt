file(GLOB srcs *.cpp *.qrc *.qml)
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