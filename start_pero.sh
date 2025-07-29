#!/bin/bash

# PeroPero Quick Start Script
set -e

echo "🚀 Starting PeroPero setup..."

# Clone the repository
git clone https://github.com/uwaisalqadri/PeroPero.git
cd PeroPero

# Setup iOS project
echo "📱 Setting up iOS project..."
cd pero-ios
xcodegen generate
cd ..

# Open Android project
echo "🤖 Opening Android project..."
open -a "Android Studio" .

echo "✅ PeroPero setup complete!"
echo "📋 Next steps:"
echo "  - For iOS: open pero-ios/Pero.xcodeproj"
echo "  - For Android: Android Studio should open automatically"