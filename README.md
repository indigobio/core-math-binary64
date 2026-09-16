# CORE-MATH Binary64 Library

This repository provides a C/C++ library of correctly-rounded, high-performance
mathematical functions for IEEE 754 binary64 (double-precision) arithmetic. The library
builds on Linux, macOS, and Windows.

The implementation is a snapshot of the `src/binary64` directory of the
[CORE-MATH](https://core-math.gitlabpages.inria.fr) project at commit
`bc80b31cd1ea1f8051f92b2669f58f8ff1892239` from 2026-09-16, with the build and testing
infrastructure removed. The function sources are otherwise unchanged.

The `lgamma` function is omitted because Windows' `math.h` does not provide `signgam`.

# Build System Requirements

## Linux

- CMake
- GCC, the GNU Compiler Collection

## Mac

- CMake (can be installed through homebrew using `brew install cmake`)
- XCode Command Line Tools

## Windows

- CMake
- Microsoft Visual Studio 2026 configured for Desktop development with C++ and C++ Clang
  tools for Windows

# Build

Run `./build.sh`. This creates a clean `build` directory and compiles the library there.

On Windows, the build uses the `x64` platform.

On x86_64 and AMD64 systems, the build uses the `x86-64-v3` architecture.
