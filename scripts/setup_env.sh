#!/bin/bash
echo "📦 Installing build tools and dependencies..."
sudo apt update
sudo apt install -y bazel docker.io clang-format htop
pip install cpplint
