cmake_minimum_required(VERSION 3.28)
project(core-math-binary64 C)

add_library(crmath STATIC
  src/log2/log2.c
  src/log10p1/dint.h
  src/log10p1/log10p1.c
  src/pow/qint.h
  src/pow/dint.h
  src/pow/pow.c
  src/pow/pow.h
  src/atanh/atanh.c
  src/atanpi/atanpi.c
  src/rsqrt/rsqrt.c
  src/atan2pi/atan2pi.c
  src/atan2pi/tint.h
  src/log1p/dint.h
  src/log1p/log1p.c
  src/erf/erf.c
  src/sin/sin.c
  src/cosh/cosh.c
  src/acos/acos.c
  src/asinh/asinh.c
  src/sinpi/sinpi.c
  src/cospi/cospi.c
  src/asin/asin.c
  src/cos/cos.c
  src/log2p1/dint_log2p1.h
  src/log2p1/log2p1.c
  src/acospi/acospi.c
  src/exp10/exp10.c
  src/asinpi/asinpi.c
  src/tanh/tanh.c
  src/atan2/atan2.c
  src/atan2/tint.h
  src/erfc/erfc.c
  src/log/log.c
  src/log/dint.h
  src/atan/atan.c
  src/tanpi/tanpi.c
  src/log10/dint.h
  src/log10/log10.c
  src/expm1/expm1.c
  src/exp/exp.c
  src/acosh/acosh.c
  src/sincos/sincos.c
  src/exp2m1/exp2m1.c
  src/sinh/sinh.c
  src/tan/tan.c
  src/hypot/hypot.c
  src/exp2/exp2.c
  src/tgamma/tgamma.c
  src/exp10m1/exp10m1.c
  src/cbrt/cbrt.c
)

target_include_directories(crmath PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)

if (CMAKE_SYSTEM_PROCESSOR MATCHES "^(x86_64|AMD64)$")
  target_compile_options(crmath PRIVATE -march=x86-64-v3)
endif()

if (MSVC)
  # clang-cl
  target_compile_options(crmath PRIVATE -O2 -fp:strict)
  set_property(TARGET crmath PROPERTY MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
else ()
  # GCC and Clang
  target_compile_options(crmath PRIVATE -O2 -fno-fast-math -ffp-contract=off)
endif ()
