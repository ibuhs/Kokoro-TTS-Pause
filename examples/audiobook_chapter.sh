#!/bin/bash
# Example: Audiobook Chapter with Dramatic Pauses

cd "$(dirname "$0")/.."
source venv/bin/activate

echo "📖 Generating Audiobook Chapter Sample..."

# Create text segments with dramatic pacing
echo "Chapter One." > seg1.txt
echo "It was a dark and stormy night." > seg2.txt
echo "The wind howled through the trees, and rain lashed against the windows." > seg3.txt
echo "Inside the old mansion, a lone candle flickered." > seg4.txt

# Generate audio with professional narration voice
kokoro-tts seg1.txt seg1.wav --voice bf_emma --speed 0.95 --lang en-gb
kokoro-tts seg2.txt seg2.wav --voice bf_emma --speed 0.95 --lang en-gb
kokoro-tts seg3.txt seg3.wav --voice bf_emma --speed 0.95 --lang en-gb
kokoro-tts seg4.txt seg4.wav --voice bf_emma --speed 0.95 --lang en-gb

# Merge with dramatic pauses
# 7s pause after chapter title (typical for audiobooks)
python utils/add_silence_between.py seg1.wav seg2.wav temp1.wav --pause 7.0
# 2s pause for dramatic effect
python utils/add_silence_between.py temp1.wav seg3.wav temp2.wav --pause 2.0
# 3s pause before scene setting
python utils/add_silence_between.py temp2.wav seg4.wav output/audiobook_chapter.wav --pause 3.0

# Cleanup
rm seg*.txt seg*.wav temp*.wav

echo "✅ Audiobook chapter created: output/audiobook_chapter.wav"
echo "📊 Notice the 7-second pause after 'Chapter One' - perfect for audiobooks!"

