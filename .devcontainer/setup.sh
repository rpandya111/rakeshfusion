#!/bin/bash
set -e

# Install system dependencies
apt-get update
apt-get install -y git wget

# Clone FaceFusion repo
if [ ! -d "facefusion" ]; then
    git clone https://github.com/facefusion/facefusion
fi
cd facefusion

# Install Python dependencies for CPU mode
pip install --upgrade pip
python install.py --onnxruntime default --skip-conda
