# ⏸️ TTS with Precise Pause Control

**Generate audio with EXACT pause/silence control using AI text-to-speech**

The missing feature in TTS: **Precise pauses that actually work!** Unlike other TTS systems where pauses are unreliable or non-existent, this tool gives you **exact control** down to the millisecond.

Perfect for:
- 🧘 Meditation & mindfulness guides
- 📚 Audiobooks & storytelling (dramatic pauses)
- 🎓 Educational content (pacing for comprehension)
- 🎭 Dramatic readings & poetry
- 💬 Language learning (time for repetition)
- 🎤 Podcast intros with timed pauses
- 📺 Video voiceovers with precise timing
- 🎵 Audio productions needing exact timing

## ✨ Features

- ⏸️ **PRECISE PAUSE CONTROL** - Add EXACT silence: 0.5s, 2.3s, 10s - anything you need!
- 🎯 **Unlike Other TTS** - Most TTS ignores pauses or makes them unpredictable (~0.15s). This gives you **exact timing**
- 🎙️ **50+ High-Quality Voices** - Natural-sounding AI voices in multiple languages
- 🤖 **AI-Powered Script Generation** - ChatGPT generates optimized scripts with smart pause placement
- 📏 **Target Duration Control** - Hit exact audio lengths (e.g., "make this exactly 5 minutes")
- 🔧 **Easy to Use** - Simple bash scripts, no coding required
- 💯 **Millisecond Accuracy** - Pauses are precisely what you specify

## 🚀 Quick Start

### Prerequisites
- macOS, Linux, or Windows (with WSL)
- Python 3.9 or higher
- Internet connection (for initial setup only)

### Installation

1. **Clone this repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/Kokoro-TTS-Pause.git
   cd Kokoro-TTS-Pause
   ```

2. **Run the setup script:**
   ```bash
   bash setup.sh
   ```
   
   This will:
   - Create a Python virtual environment
   - Install all dependencies (kokoro-tts, gradio, etc.)
   - Download the required voice models
   - Set up the necessary tools

3. **Test the installation:**
   ```bash
   bash examples/quick_test.sh
   ```

## 📝 How to Use

### Method 1: Use the ChatGPT Script Generator (Easiest!)

1. **Visit the public GPT:**
   👉 https://chatgpt.com/g/g-68ef01a860888191a359f20813bc89e6-meditation-scripts

2. **Tell it what you want:**
   ```
   Target duration: 5 minutes
   
   [Your meditation text here]
   ```

3. **ChatGPT generates a complete script** - Copy it

4. **Save and run:**
   ```bash
   # Save the script ChatGPT gave you
   nano my_meditation.sh
   
   # Make it executable
   chmod +x my_meditation.sh
   
   # Run it
   bash my_meditation.sh
   ```

5. **Done!** Your meditation audio is ready

### Method 2: Manual Script Creation

See [USAGE.md](USAGE.md) for detailed manual instructions.

## 🎯 Examples

### Example 1: Meditation (Precise Timing)
```
Target: 2 minutes

Take a deep breath in.
Hold for a moment.
Slowly exhale.
Feel yourself relaxing.
```
**Result:** 2-minute audio with 3-5 second pauses for breathing

### Example 2: Audiobook (Dramatic Pauses)
```
Chapter One.
[7 second pause]
It was a dark and stormy night.
[2 second pause]
The wind howled through the trees.
```
**Result:** Professional narration with chapter breaks

### Example 3: Language Learning (Repetition Time)
```
Hello.
[3 second pause for student repetition]
My name is Sarah.
[3 second pause]
Nice to meet you.
```
**Result:** Timed pauses for language practice

### Example 4: Podcast Intro (Exact Timing)
```
Welcome to our show.
[2.5 second music sting]
I'm your host, and today we're discussing...
```
**Result:** Precisely timed for music overlay

## 📚 Documentation

- **[USAGE.md](USAGE.md)** - Detailed usage guide
- **[GPT_PROMPT.md](GPT_PROMPT.md)** - ChatGPT prompt details
- **[VOICES.md](VOICES.md)** - Available voices and recommendations
- **[examples/](examples/)** - Example meditation scripts

## 🎭 Voice Recommendations

### For Meditation & Relaxation
- **af_nicole** - Calm, smooth
- **af_nova** - ASMR-like, intimate
- **am_echo** - Deep, grounding male

### For Narration & Audiobooks
- **af_sarah** - Clear, professional
- **am_adam** - Authoritative male
- **bf_emma** - British, elegant

### For Educational Content
- **af_sarah** - Clear, neutral
- **am_michael** - Mature, wise
- **bf_alice** - Refined, clear

See [VOICES.md](VOICES.md) for all 50+ voices with detailed recommendations.

## 🛠️ Requirements

Automatically installed by `setup.sh`:
- `kokoro-tts` >= 2.3.0
- `numpy` >= 2.0
- `soundfile` >= 0.13
- `gradio` >= 5.0 (optional, for web UI)

## 🤝 Contributing

Contributions welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Submit a pull request

## 📄 License

MIT License - feel free to use for personal or commercial projects

## 🙏 Credits

- **Kokoro-TTS** - Excellent text-to-speech engine
- **ChatGPT Script Generator** - AI-powered pause optimization
- Built with ❤️ for creators who need PRECISE audio timing

## 💡 Pro Tips

### The Pause Problem Solved
Most TTS systems either:
- ❌ Ignore pause syntax entirely
- ❌ Give unpredictable pauses (~0.15-0.3s)
- ❌ Don't support SSML or it doesn't work

**This tool gives you EXACT pauses:** 0.5s, 2.3s, 10s - whatever you specify!

### Usage Tips
- **Pauses can be ANY length:** 0.1s to 60s+ (yes, even a full minute!)
- **Different speeds for different content:** 0.7x for calm, 1.2x for energetic
- **Mix voices:** Use one for intro, another for main content
- **Target duration:** ±5 seconds accuracy is easily achievable
- **Decimal precision:** Use 2.5s, 3.7s - not just whole numbers!

## 📮 Support

- **Issues:** [GitHub Issues](https://github.com/YOUR_USERNAME/Kokoro-TTS-Pause/issues)
- **Questions:** Use GitHub Discussions

---

**Finally - TTS with pauses that actually work!** ⏸️✨

