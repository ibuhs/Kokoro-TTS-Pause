#!/bin/bash
# Example: Podcast Intro with Precise Timing for Music Overlay

cd "$(dirname "$0")/.."
source venv/bin/activate

echo "🎙️ Generating Podcast Intro..."

# Create intro segments
echo "Welcome to Tech Talk Tuesday." > seg1.txt
echo "I'm your host, Alex, and today we're diving into artificial intelligence." > seg2.txt
echo "But first, let's hear from our sponsor." > seg3.txt

# Generate audio with energetic voice
kokoro-tts seg1.txt seg1.wav --voice am_adam --speed 1.1 --lang en-us
kokoro-tts seg2.txt seg2.wav --voice am_adam --speed 1.1 --lang en-us
kokoro-tts seg3.txt seg3.wav --voice am_adam --speed 1.1 --lang en-us

# Merge with PRECISE pauses for music stings
# 2.5s pause after intro (for music sting overlay)
python utils/add_silence_between.py seg1.wav seg2.wav temp1.wav --pause 2.5
# 1.5s pause before sponsor mention (for transition sound)
python utils/add_silence_between.py temp1.wav seg3.wav output/podcast_intro.wav --pause 1.5

# Cleanup
rm seg*.txt seg*.wav temp*.wav

echo "✅ Podcast intro created: output/podcast_intro.wav"
echo "📊 2.5s pause after intro - perfect for overlaying your music sting!"
echo "💡 This precise timing is why this tool exists!"

