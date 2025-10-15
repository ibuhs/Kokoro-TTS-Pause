# 🎭 Voice Guide

Complete guide to all 50+ available voices in Kokoro-TTS.

## 🌟 Top Recommendations

### Best for Meditation
| Voice | Style | Why It's Great |
|-------|-------|----------------|
| **af_nicole** | Calm, smooth | Warm and reassuring, perfect for guidance |
| **af_nova** | ASMR-like | Intimate, soft, great with headphones |
| **af_river** | Flowing, gentle | Natural rhythm, very soothing |
| **am_echo** | Deep, resonant | Grounding male voice, meditative |

### Best for Sleep Stories
| Voice | Style | Why It's Great |
|-------|-------|----------------|
| **af_nova** | Soft, intimate | ASMR quality, very relaxing |
| **am_onyx** | Smooth, deep | Rich male voice, sleep-inducing |
| **af_sky** | Light, airy | Ethereal quality, dream-like |

### Best for Clear Instructions
| Voice | Style | Why It's Great |
|-------|-------|----------------|
| **af_sarah** | Clear, neutral | Professional, easy to understand |
| **am_adam** | Clear male | Authoritative but friendly |
| **bf_libby** | British, clear | Elegant, refined |

## 📋 Complete Voice List

### American English - Female (af_)

| Voice | Characteristics | Best For |
|-------|----------------|----------|
| `af_alloy` | Balanced, versatile | General use |
| `af_aoede` | Artistic, expressive | Creative meditations |
| `af_bella` | Beautiful, pleasant | Affirmations |
| `af_heart` | Warm, caring | Loving-kindness meditation |
| `af_jessica` | Friendly, approachable | Beginner meditations |
| `af_kore` | Youthful, energetic | Morning practices |
| `af_nicole` | ⭐ Calm, soothing | **Meditation (recommended)** |
| `af_nova` | ⭐ ASMR-like | **Sleep, headphones** |
| `af_river` | ⭐ Flowing, natural | **Nature meditations** |
| `af_sarah` | Clear, professional | Instructions, body scans |
| `af_sky` | Light, ethereal | Visualization practices |

### American English - Male (am_)

| Voice | Characteristics | Best For |
|-------|----------------|----------|
| `am_adam` | Clear, confident | Leadership, confidence building |
| `am_echo` | ⭐ Deep, resonant | **Grounding meditations** |
| `am_eric` | Friendly, warm | General meditation |
| `am_fenrir` | Strong, powerful | Strength practices |
| `am_liam` | Young, energetic | Active meditations |
| `am_michael` | Mature, wise | Wisdom teachings |
| `am_onyx` | Smooth, rich | Sleep, evening practices |
| `am_puck` | Playful, light | Joyful practices |
| `am_santa` | Jolly, warm | Compassion meditations |

### British English - Female (bf_)

| Voice | Characteristics | Best For |
|-------|----------------|----------|
| `bf_alice` | Elegant, refined | Classical meditations |
| `bf_emma` | Warm, friendly | General use |
| `bf_isabella` | Sophisticated | Mindfulness practices |
| `bf_lily` | Gentle, soft | Relaxation |

### British English - Male (bm_)

| Voice | Characteristics | Best For |
|-------|----------------|----------|
| `bm_daniel` | Authoritative | Instructional |
| `bm_fable` | Storytelling quality | Guided journeys |
| `bm_george` | Distinguished | Formal practices |
| `bm_lewis` | Approachable | Everyday meditation |

### Other Languages

| Voice | Language | Style |
|-------|----------|-------|
| `ef_dora` | European | Clear, neutral |
| `em_alex` | European | Professional |
| `ff_siwis` | French | Native French speaker |
| `hf_alpha` | Hindi | Female |
| `hf_beta` | Hindi | Female, alternative |
| `hm_omega` | Hindi | Male |
| `hm_psi` | Hindi | Male, alternative |
| `if_sara` | Italian | Melodic |
| `im_nicola` | Italian | Warm |
| `jf_alpha` | Japanese | Female |
| `jf_gongitsune` | Japanese | Story-focused |
| `jf_nezumi` | Japanese | Light |
| `jf_tebukuro` | Japanese | Warm |
| `jm_kumo` | Japanese | Male |
| `pf_dora` | Portuguese | Female |
| `pm_alex` | Portuguese | Male |
| `zf_xiaobei` | Chinese | Female, clear |
| `zf_xiaoni` | Chinese | Female, warm |
| `zf_xiaoxiao` | Chinese | Female, gentle |
| `zf_xiaoyi` | Chinese | Female, professional |

## 🎨 Voice Combinations

### Narrative + Meditation

Use two voices for variety:

```bash
# Introduction with clear voice
kokoro-tts intro.txt intro.wav --voice af_sarah --speed 1.0

# Meditation with calm voice  
kokoro-tts meditation.txt meditation.wav --voice af_nicole --speed 0.85

# Merge
python utils/add_silence_between.py intro.wav meditation.wav combined.wav --pause 2.0
```

### Morning vs Evening

**Morning Energy:**
- `af_kore` or `am_liam` at speed 1.0-1.1
- Brighter, more energetic

**Evening Calm:**
- `af_nova` or `am_onyx` at speed 0.75-0.85
- Softer, more relaxing

## 🎯 Finding Your Perfect Voice

### Step 1: Test the Top 4

Create a test script:

```bash
for voice in af_nicole af_nova af_river am_echo; do
    kokoro-tts test.txt ${voice}.wav --voice ${voice} --speed 0.85 --lang en-us
done
```

Listen to each and pick your favorite.

### Step 2: Fine-Tune Speed

Once you pick a voice, test speeds:

```bash
# Test af_nicole at different speeds
kokoro-tts test.txt test_07.wav --voice af_nicole --speed 0.7
kokoro-tts test.txt test_085.wav --voice af_nicole --speed 0.85
kokoro-tts test.txt test_10.wav --voice af_nicole --speed 1.0
```

### Step 3: Test with Your Content

Generate a short version of your actual meditation to verify the voice works well with your specific text style.

## 💡 Pro Tips

### 1. Match Voice to Content

**Breath work:** Deep voices (`am_echo`, `am_onyx`)  
**Body scan:** Clear voices (`af_sarah`, `am_adam`)  
**Visualization:** Ethereal voices (`af_sky`, `af_nova`)  
**Affirmations:** Warm voices (`af_heart`, `bf_emma`)

### 2. Consider Your Audience

**Beginners:** Clear, professional (`af_sarah`, `am_adam`)  
**Experienced:** Subtle, intimate (`af_nova`, `am_echo`)  
**Children:** Warm, gentle (`af_heart`, `bf_lily`)

### 3. Voice + Speed Combinations

| Goal | Voice | Speed | Why |
|------|-------|-------|-----|
| Deep relaxation | af_nova | 0.7 | Maximum calm |
| Standard meditation | af_nicole | 0.85 | Balanced |
| Clear instruction | af_sarah | 1.0 | Easy to follow |
| Energizing | af_kore | 1.1 | Motivating |

### 4. Headphone Optimization

Best voices for headphone listening (ASMR quality):
- `af_nova` ⭐⭐⭐
- `af_river` ⭐⭐
- `am_onyx` ⭐⭐

### 5. Multiple Language Support

If creating multilingual content:
- Use native speakers for each language
- Keep voice style consistent (all calm or all clear)
- May need different speeds for different languages

## 🔄 Switching Voices

To change voice in a script, simply edit:

```bash
# Before
--voice af_sarah

# After  
--voice af_nicole
```

Then regenerate the audio.

## 📊 Voice Testing Script

Save this as `test_voices.sh`:

```bash
#!/bin/bash
source venv/bin/activate

TEXT="Take a deep breath in, and slowly exhale."
echo "$TEXT" > test.txt

VOICES=(af_nicole af_nova af_sarah am_echo am_adam)

for voice in "${VOICES[@]}"; do
    echo "Generating $voice..."
    kokoro-tts test.txt "test_${voice}.wav" --voice ${voice} --speed 0.85 --lang en-us
done

rm test.txt
echo "✅ Test files created. Listen and compare!"
```

## 🎵 Voice Characteristics Deep Dive

### af_nicole (⭐ Recommended)
- **Pitch:** Medium
- **Tone:** Warm, caring
- **Best speed:** 0.85
- **Perfect for:** All-purpose meditation
- **Avoid for:** High-energy practices

### af_nova (⭐ ASMR Quality)
- **Pitch:** Soft, slightly lower
- **Tone:** Intimate, personal
- **Best speed:** 0.75-0.85
- **Perfect for:** Sleep, headphones, ASMR
- **Avoid for:** Large group settings

### am_echo (⭐ Grounding)
- **Pitch:** Deep
- **Tone:** Resonant, stable
- **Best speed:** 0.8-0.9
- **Perfect for:** Grounding, anxiety relief
- **Avoid for:** Gentle, feminine-energy practices

---

**Experiment and find what resonates with you!** 🎭✨

