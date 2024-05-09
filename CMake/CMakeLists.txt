cmake_minimum_required(VERSION 3.24 FATAL_ERROR)

project(Code-Quest)
 
find_package(wxWidgets REQUIRED COMPONENTS net core base)
include(${wxWidgets_USE_FILE})

# Path to source
set (source "../Source")

# Define a variable containing a list of source files for the project
set(SRC_FILES
    ${source}/main.cpp
    )

add_executable(${PROJECT_NAME} ${SRC_FILES})
target_link_libraries(${PROJECT_NAME} ${wxWidgets_LIBRARIES})

install(TARGETS ${PROJECT_NAME} DESTINATION bin)