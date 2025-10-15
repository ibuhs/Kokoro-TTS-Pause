#!/bin/bash
# Example: Language Learning with Repetition Pauses

cd "$(dirname "$0")/.."
source venv/bin/activate

echo "🗣️ Generating Language Learning Exercise..."

# Create text segments for language practice
echo "Hello." > seg1.txt
echo "My name is Sarah." > seg2.txt
echo "Nice to meet you." > seg3.txt
echo "How are you today?" > seg4.txt

# Generate audio with clear, neutral voice
kokoro-tts seg1.txt seg1.wav --voice af_sarah --speed 0.9 --lang en-us
kokoro-tts seg2.txt seg2.wav --voice af_sarah --speed 0.9 --lang en-us
kokoro-tts seg3.txt seg3.wav --voice af_sarah --speed 0.9 --lang en-us
kokoro-tts seg4.txt seg4.wav --voice af_sarah --speed 0.9 --lang en-us

# Merge with EXACTLY 4 seconds for student repetition
# This precise timing is impossible with standard TTS!
python utils/add_silence_between.py seg1.wav seg2.wav temp1.wav --pause 4.0
python utils/add_silence_between.py temp1.wav seg3.wav temp2.wav --pause 4.0
python utils/add_silence_between.py temp2.wav seg4.wav output/language_learning.wav --pause 4.0

# Cleanup
rm seg*.txt seg*.wav temp*.wav

echo "✅ Language learning audio created: output/language_learning.wav"
echo "📊 Exactly 4 seconds after each phrase for student repetition!"

