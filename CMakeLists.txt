OPTION(ENABLE_MISC "Enable misc|scope (github.com/rai-project/misc_scope)" OFF)
if (NOT ENABLE_MISC)
 return()
endif()

cmake_minimum_required(VERSION 3.12 FATAL_ERROR)

find_package(OpenBLAS REQUIRED)

# Look for sugar.cmake files in the plugin src directory
sugar_include("src")

# The plugin is a static library that Scope will be linked with
add_library(misc_scope OBJECT ${misc_SOURCES} ${misc_CUDA_SOURCES})
target_include_directories(misc_scope PRIVATE 
    ${SCOPE_SRC_DIR}
    ${THIRDPARTY_DIR}
    ${TOP_DIR}/include
    ${CUDA_INCLUDE_DIRS}
    "src"
)

# Convert CUDA flags from list
MESSAGE(STATUS "CMAKE_CUDA_FLAGS: ${CMAKE_CUDA_FLAGS}")
string(REPLACE ";" " " CMAKE_CUDA_FLAGS "${CMAKE_CUDA_FLAGS}")
MESSAGE(STATUS "CMAKE_CUDA_FLAGS: ${CMAKE_CUDA_FLAGS}")

target_compile_features(misc_scope PUBLIC cxx_std_11)
set_property(TARGET misc_scope PROPERTY CUDA_STANDARD 11)
target_link_libraries(misc_scope PRIVATE benchmark::benchmark)
target_link_libraries(misc_scope PUBLIC ${OpenBLAS_LIB})
