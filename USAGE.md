# 📖 Detailed Usage Guide

Complete guide to creating meditation audio manually (without ChatGPT).

## 🎯 Basic Workflow

```
1. Write meditation text → Split into segments
2. Generate audio for each segment
3. Merge segments with precise pauses
4. Output final meditation audio
```

## 📝 Manual Script Creation

### Step 1: Activate Environment

```bash
cd Kokoro-TTS-Pause
source venv/bin/activate
```

### Step 2: Create Text Segments

Create separate text files for each phrase:

```bash
echo "Take a deep breath in." > seg1.txt
echo "And slowly exhale." > seg2.txt
echo "Feel yourself relaxing." > seg3.txt
```

**Why separate files?**
- Allows precise pause control between phrases
- Each segment can have different timing
- Better organization for complex meditations

### Step 3: Generate Audio for Each Segment

```bash
kokoro-tts seg1.txt seg1.wav --voice af_nicole --speed 0.85 --lang en-us
kokoro-tts seg2.txt seg2.wav --voice af_nicole --speed 0.85 --lang en-us
kokoro-tts seg3.txt seg3.wav --voice af_nicole --speed 0.85 --lang en-us
```

**Parameters:**
- `--voice af_nicole` - Voice selection (see VOICES.md)
- `--speed 0.85` - 85% speed (slower, meditative)
- `--lang en-us` - Language (en-us, en-gb, es, fr, etc.)

### Step 4: Merge with Pauses

```bash
python utils/add_silence_between.py seg1.wav seg2.wav temp1.wav --pause 3.0
python utils/add_silence_between.py temp1.wav seg3.wav final.wav --pause 3.0
```

**Parameters:**
- `--pause 3.0` - 3 seconds of silence
- Can use any decimal: 1.5, 2.5, 5.0, etc.

### Step 5: Cleanup

```bash
rm seg*.txt seg*.wav temp*.wav
```

## 🎨 Advanced Techniques

### Variable Pause Lengths

Different pauses for different contexts:

```bash
# Short pause (1s) between related thoughts
python utils/add_silence_between.py seg1.wav seg2.wav temp1.wav --pause 1.0

# Medium pause (3s) between sections  
python utils/add_silence_between.py temp1.wav seg3.wav temp2.wav --pause 3.0

# Long pause (7s) for deep contemplation
python utils/add_silence_between.py temp2.wav seg4.wav final.wav --pause 7.0
```

### Multiple Voices

Mix voices for variety:

```bash
# Narrator
kokoro-tts intro.txt intro.wav --voice af_sarah --speed 1.0 --lang en-us

# Meditation guide (calmer, slower)
kokoro-tts meditation.txt meditation.wav --voice af_nicole --speed 0.8 --lang en-us

# Merge
python utils/add_silence_between.py intro.wav meditation.wav combined.wav --pause 2.0
```

### Speed Variations

```bash
# Very slow (0.7x) - Deep meditation
--speed 0.7

# Slow (0.85x) - Standard meditation  
--speed 0.85

# Normal (1.0x) - Introduction/instructions
--speed 1.0

# Fast (1.2x) - Energizing practices
--speed 1.2
```

## 📊 Calculating Duration

### Speech Time Estimation

At 0.85x speed:
- ~2.5 words per second
- ~150 words per minute

**Example:**
- 50 words = ~20 seconds speech
- + 3 pauses of 5s each = 15 seconds
- **Total:** ~35 seconds

### Hitting Target Duration

**Formula:**
```
Total Duration = Speech Time + Pause Time
Pause Time = Total Duration - Speech Time
```

**Example: 5-minute meditation**
- Target: 300 seconds
- Speech time (200 words @ 0.85x): ~80 seconds
- Pause time needed: 220 seconds
- Distributed across 10 segments: ~22s per pause

## 🎭 Voice Selection

### For Different Moods

**Calm & Soothing:**
- `af_nicole` - Smooth, warm
- `af_river` - Flowing, gentle
- `am_echo` - Deep, resonant

**Clear & Neutral:**
- `af_sarah` - Professional
- `am_adam` - Clear male

**Intimate & ASMR:**
- `af_nova` - Soft, close-mic quality
- `af_heart` - Warm, personal

See [VOICES.md](VOICES.md) for complete list.

## 🔧 Troubleshooting

### Audio Quality Issues

**Robotic/Unnatural:**
- Try different voice: `--voice af_nova`
- Adjust speed: `--speed 0.9`
- Use more natural phrasing in text

**Too Fast:**
- Lower speed: `--speed 0.7` to `0.85`
- Add more pauses between phrases

**Pauses Not Working:**
- Check `--pause` value is correct
- Verify audio files exist before merging
- Check for error messages in output

### Script Errors

**"kokoro-tts: command not found"**
```bash
source venv/bin/activate  # Activate environment first
```

**"No such file or directory"**
```bash
cd Kokoro-TTS-Pause  # Make sure you're in correct directory
```

**"Module not found"**
```bash
pip install -r requirements.txt  # Reinstall dependencies
```

## 💡 Best Practices

### 1. Organize Your Files

```
Kokoro-TTS-Pause/
├── scripts/
│   ├── morning_meditation.sh
│   ├── evening_wind_down.sh
│   └── anxiety_relief.sh
└── output/
    ├── morning_meditation.wav
    ├── evening_wind_down.wav
    └── anxiety_relief.wav
```

### 2. Use Descriptive Names

```bash
# Good
body_scan_10min.wav
breathing_exercise_5min.wav

# Not ideal
meditation1.wav
test.wav
```

### 3. Test Incrementally

- Generate one segment first, listen to it
- Test merge with 2 segments before doing all
- Adjust based on what you hear

### 4. Document Your Scripts

Add comments in bash scripts:

```bash
#!/bin/bash
# Morning Energy Meditation - 10 minutes
# Voice: af_sarah (clear, energizing)
# Speed: 1.0 (normal, not slowed down)

# Intro section
echo "Good morning..." > seg1.txt
```

### 5. Save Successful Configurations

Keep track of what works:
- Voice + speed combinations
- Pause patterns that feel natural
- Segment lengths that sound good

## 🚀 Automation Tips

### Batch Processing

Create multiple meditations:

```bash
for meditation in morning evening night; do
    bash scripts/${meditation}_meditation.sh
done
```

### Template Script

Create a template for new meditations:

```bash
cp examples/simple_meditation.sh scripts/my_new_meditation.sh
# Edit the new file
nano scripts/my_new_meditation.sh
```

## 📚 Related Documentation

- [README.md](README.md) - Overview
- [GPT_PROMPT.md](GPT_PROMPT.md) - ChatGPT automation
- [VOICES.md](VOICES.md) - Voice guide

---

**Happy meditating!** 🧘✨

