# CORE-MATH Binary64 Library

This repository provides a C/C++ library of correctly-rounded, high-performance
mathematical functions for IEEE 754 binary64 (double-precision) arithmetic. The library
builds on Linux, macOS, and Windows.

The implementation is a snapshot of the `src/binary64` directory of the
[CORE-MATH](https://core-math.gitlabpages.inria.fr) project at commit
`93d9f3bab7561cfb62f746f7e70c0888bb5c9a00` from 2026-03-28, with the build and testing
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
