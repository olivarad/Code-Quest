cmake_minimum_required(VERSION 3.28.3)

project(Code-Quest)

# Path to source
set (source "../Source")

add_executable(${PROJECT_NAME} ${source}/main.cpp)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)