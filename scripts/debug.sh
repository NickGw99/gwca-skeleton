#! /usr/bin/env bash

set -euo pipefail

# set cwd to project root
cd "$(dirname "${BASH_SOURCE[0]}")/..";

echo "====="
echo "debug"
echo "====="

./scripts/configure.sh

./scripts/build.sh

./build/Debug/MyApp.exe
