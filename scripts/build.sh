#! /usr/bin/env bash

set -euo pipefail

# set cwd to project root
cd "$(dirname "${BASH_SOURCE[0]}")/.."

echo "========"
echo "building"
echo "========"

cmake \
    --build ./build \
    --config Debug