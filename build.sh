#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

rm -rf build

case "$(uname -s)" in
  CYGWIN*|MSYS*|MINGW*)
    cmake -S . -B build \
         -G "Visual Studio 18 2026" \
         -T ClangCL \
         -A x64
    ;;
  *)
    cmake -S . -B build
    ;;
esac

cmake --build build --config Release
