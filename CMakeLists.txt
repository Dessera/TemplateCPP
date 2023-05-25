cmake_minimum_required(VERSION 3.0.0)

project(IMtrans VERSION 0.1.0)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(nlohmann_json)

add_executable(IMtrans main.cpp)
target_link_libraries(IMtrans PRIVATE nlohmann_json::nlohmann_json)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
