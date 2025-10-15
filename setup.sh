#!/bin/bash
# Meditation Audio Generator - Setup Script
# This script sets up everything you need

set -e  # Exit on error

echo "🧘 Meditation Audio Generator - Setup"
echo "======================================"
echo ""

# Check Python version
echo "📋 Checking Python version..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.9 or higher."
    exit 1
fi

PYTHON_VERSION=$(python3 --version | cut -d' ' -f2 | cut -d'.' -f1,2)
echo "✅ Found Python $PYTHON_VERSION"

# Create virtual environment
echo ""
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔄 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip --quiet

# Install requirements
echo "📥 Installing dependencies..."
echo "   This may take a few minutes..."

# Install with trusted hosts to avoid SSL issues
pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org \
    kokoro-tts>=2.3.0 \
    numpy>=2.0 \
    soundfile>=0.13 \
    --quiet

echo "✅ Dependencies installed"

# Download models (happens automatically on first use)
echo ""
echo "📥 Preparing to download voice models..."
echo "   (Models will download on first use - ~335MB)"

# Create necessary directories
echo ""
echo "📁 Creating directory structure..."
mkdir -p output
mkdir -p scripts
mkdir -p examples

echo "✅ Directory structure created"

# Make utility scripts executable
echo ""
echo "🔧 Setting up utilities..."
chmod +x utils/add_silence_between.py 2>/dev/null || true
chmod +x examples/*.sh 2>/dev/null || true

echo ""
echo "✅ Setup complete!"
echo ""
echo "📚 Next steps:"
echo "   1. Activate the environment:"
echo "      source venv/bin/activate"
echo ""
echo "   2. Test the installation:"
echo "      bash examples/quick_test.sh"
echo ""
echo "   3. Generate your first meditation:"
echo "      Visit: https://chatgpt.com/g/g-68ef01a860888191a359f20813bc89e6-meditation-scripts"
echo ""
echo "   4. Read the documentation:"
echo "      cat USAGE.md"
echo ""
echo "🎉 You're ready to create meditation audio!"

