# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED MISC_SCOPE_SRC_CONV_SUGAR_CMAKE_)
  return()
else()
  set(MISC_SCOPE_SRC_CONV_SUGAR_CMAKE_ 1)
endif()

include(sugar_files)

sugar_files(
    misc_HEADERS
    args.hpp
    utils.hpp
)

sugar_files(
    misc_SOURCES
    cudnn.cpp
)

sugar_files(
    misc_CUDA_SOURCES
    cuda.cu
)

