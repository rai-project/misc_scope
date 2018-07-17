# This file generated automatically by:
#   generate_sugar_files.py
# see wiki for more info:
#   https://github.com/ruslo/sugar/wiki/Collecting-sources

if(DEFINED MISC_SCOPE_SRC_SUGAR_CMAKE_)
  return()
else()
  set(MISC_SCOPE_SRC_SUGAR_CMAKE_ 1)
endif()

include(sugar_include)

sugar_include(axpy)
sugar_include(conv)
sugar_include(gemm)
sugar_include(launch)
sugar_include(lock)
sugar_include(vectoradd)

