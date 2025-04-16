#!/bin/bash
echo "🚀 Building and running Docker container..."
docker build -t av_toolkit_img ./docker
docker run --rm -it av_toolkit_img
