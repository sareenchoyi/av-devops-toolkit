#!/bin/bash
echo "🧹 Running clang-format..."
clang-format -i src/*.cpp
echo "📏 Running cpplint..."
cpplint src/*.cpp
