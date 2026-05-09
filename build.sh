#!/bin/bash

set -e

cd "$(dirname "${BASH_SOURCE[0]}")/.."
if [ -n "$REPO_ROOT" ] && [ -d "$REPO_ROOT" ]; then
  echo "$REPO_ROOT"
fi
echo "Building in $(pwd)..."

colcon build --packages-select robot_control

echo "Build done."
