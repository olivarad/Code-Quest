cmake_minimum_required(VERSION 3.28.3)

project(Code-Quest)

add_executable(${PROJECT_NAME} ../Source/main.cpp)

install(TARGETS ${PROJECT_NAME} DESTINATION bin)