# CORE-MATH Binary64 Library

This repository provides a C/C++ library of correctly-rounded, high-performance
mathematical functions for IEEE 754 binary64 (double-precision) arithmetic. The library
builds on Linux, macOS, and Windows.

The implementation is a snapshot of the `src/binary64` directory of the
[CORE-MATH](https://core-math.gitlabpages.inria.fr) project at commit
`9a10f6e246374437d2dfcf0714fce5ce4254f98` from 2026-02-12, with the build and testing
infrastructure removed. The function sources are otherwise unchanged.

The `lgamma` function is omitted because Windows' `math.h` does not provide `signgam`.

# Build System Requirements

## Linux

- cmake
- GCC, the GNU Compiler Collection

## Mac

- cmake (can be installed through homebrew using `brew install cmake`)
- XCode Command Line Tools

## Windows

- cmake
- Microsoft Visual Studio 2026 configured for Desktop development with C++ and C++ Clang
  tools for Windows

# Build

Run `./build.sh`. This creates a clean `build` directory and compiles the library there.

On Windows, the build uses the `x64` platform.

On x86_64 and AMD64 systems, the build uses the `x86-64-v3` architecture.
