project(mod_fishbot_detector)
cmake_minimum_required(VERSION 3.16)

file(GLOB_RECURSE sources
    src/*.cpp
)

add_library(${PROJECT_NAME} STATIC ${sources})

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        ${AC_CORE_INCLUDE_DIR}
        ${AC_SHARED_INCLUDE_DIR}
        ${AC_SRC_DIR}
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        game
        scripts
)