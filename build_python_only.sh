#!/bin/bash
# Copyright 2025 The MediaPipe Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Script to build Python package only (without C extension).
#
# This script builds only the Python components of MediaPipe, skipping the
# C/C++ extension compilation. This is useful for:
# - Faster development iterations on Python code
# - Documentation-only builds
# - Testing Python code without native dependencies
#
# Usage:
#   $ ./build_python_only.sh
#
# The script sets MEDIAPIPE_NO_EXTENSION=1 to skip building the C extension.

set -e

echo "Building MediaPipe Python package (without C extension)..."
echo ""
echo "This build will:"
echo "  - Skip C/C++ extension compilation (libmediapipe.so)"
echo "  - Build only Python source files"
echo "  - Generate metadata schemas"
echo ""

# Set environment variable to skip C extension build
export MEDIAPIPE_NO_EXTENSION=1

# Build the Python package
python3 setup.py build

echo ""
echo "Python-only build completed successfully!"
echo ""
echo "Note: The resulting package will not include the C extension."
echo "This is suitable for development, documentation, or pure-Python use cases."
