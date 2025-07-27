#!/bin/bash

echo "🌱 Welcome to TomatoScope"

# -------------------------------
# 🐍 Create Python virtual environment
# -------------------------------
echo "🐍 Creating Python virtual environment in ./venv"
python3 -m venv venv

# Activate the virtual environment and install requirements
echo "📦 Activating venv and installing Python dependencies..."
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

echo "🚀 Setup complete!"
# echo "👉 To activate the virtual environment later, run: source venv/bin/activate"
echo "📘 To get started, see docs/plant_setup_guide.md"
