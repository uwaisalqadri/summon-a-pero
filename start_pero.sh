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

# Wait briefly before opening Xcode
echo "⏳ Waiting for Android Studio to launch..."
sleep 3

# Open iOS project in Xcode
echo "📱 Opening iOS project in Xcode..."
open pero-ios/Pero.xcodeproj

echo "✅ PeroPero setup complete!"
echo "🎉 Both Android Studio and Xcode should now be opening automatically!"
echo "📋 You're all set to start developing!"