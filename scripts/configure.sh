#! /usr/bin/env bash

set -euo pipefail;

# set cwd to project root
cd "$(dirname "${BASH_SOURCE[0]}")/..";

echo "==========="
echo "configuring"
echo "==========="

cmake \
    -S . \
    -B ./build \
    -G "Visual Studio 17 2022" \
    -T host=x86 \
    -A win32
