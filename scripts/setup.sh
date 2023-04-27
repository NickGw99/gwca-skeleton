#! /usr/bin/env bash

set -euo pipefail

# set cwd to project root
cd "$(dirname "${BASH_SOURCE[0]}")/.."

echo "====="
echo "setup"
echo "====="

./scripts/configure.sh

./scripts/build.sh