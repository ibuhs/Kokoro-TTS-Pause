# 🤖 Using the ChatGPT Meditation Script Generator

The public ChatGPT GPT automatically generates optimized meditation scripts for this tool.

## 🔗 Access the GPT

**URL:** https://chatgpt.com/g/g-68ef01a860888191a359f20813bc89e6-meditation-scripts

**No ChatGPT Plus required** - This is a public GPT anyone can use!

## 📝 How to Use

### Step 1: Open the GPT

Click the link above or search for "Meditation Scripts" in ChatGPT.

### Step 2: Provide Your Input

Tell the GPT:
1. **Target duration** (e.g., "5 minutes", "2 minutes")
2. **Your meditation text**

### Example Input:

```
Target duration: 3 minutes

Welcome to this breathing meditation.
Take a slow, deep breath in.
Hold it gently.
And exhale fully.
Feel your body begin to relax.
Notice the rhythm of your breath.
Allow each exhale to release tension.
You are safe, calm, and present.
```

### Step 3: Get Your Script

The GPT will analyze your text and generate a complete bash script with:
- Optimized pause distribution
- Intelligent timing for target duration
- Ready-to-run code

### Step 4: Run the Script

1. **Copy the generated script**

2. **Save it to a file:**
   ```bash
   cd Kokoro-TTS-Pause
   nano my_meditation.sh
   # Paste the script, save (Ctrl+X, Y, Enter)
   ```

3. **Run it:**
   ```bash
   bash my_meditation.sh
   ```

4. **Done!** Find your audio in the current directory

## 🎯 Advanced Usage

### Custom Voice

Ask the GPT: *"Use voice af_nova instead"*

### Specific Pause Pattern

Tell it: *"Add a long 10-second pause in the middle for deep reflection"*

### Multiple Versions

Request: *"Generate both a 5-minute and 10-minute version"*

## 💡 Pro Tips

**1. Be specific about pacing:**
   - "Make it slow and contemplative"
   - "Use longer pauses after breathing instructions"
   - "Add 5-second pauses between major sections"

**2. Mention the meditation type:**
   - "This is a body scan meditation"
   - "This is for anxiety relief"
   - "This is a sleep meditation"

**3. Request iterations:**
   - "Can you add more pauses?"
   - "Make it 30 seconds longer"
   - "Adjust the middle section"

## 🔧 What the GPT Does

The GPT automatically:
1. ✅ Counts words to estimate speech time
2. ✅ Calculates needed silence for target duration
3. ✅ Distributes pauses intelligently
4. ✅ Generates complete, runnable bash scripts
5. ✅ Optimizes for meditation flow

## 🎭 Voice Selection

The GPT uses **af_nicole** (calm female voice) by default.

Want a different voice? Tell it:
- "Use af_nova for ASMR quality"
- "Use am_echo for a deep male voice"
- "Use af_sarah for clear neutral voice"

See [VOICES.md](VOICES.md) for all options.

## 📊 Example Conversation

**You:**
> Target: 5 minutes
> 
> Take a deep breath.
> Feel yourself relaxing.
> Let go of tension.

**GPT:**
> I'll create a 5-minute meditation with strategic pauses.
> 
> ```bash
> #!/bin/bash
> cd Kokoro-TTS-Pause
> source venv/bin/activate
> 
> echo "Take a deep breath." > seg1.txt
> # ... [complete script]
> ```

**You run it:**
```bash
bash meditation_5min.sh
```

**Result:** `meditation_5min.wav` ready!

## 🆘 Troubleshooting

### "Script doesn't work"

Make sure:
1. You're in the `Kokoro-TTS-Pause` directory
2. Virtual environment is activated: `source venv/bin/activate`
3. Script has correct paths (should start with `cd Kokoro-TTS-Pause`)

### "Duration is off"

Tell the GPT: *"Adjust pauses to reach exactly 5 minutes"*

### "Too fast/slow"

The GPT uses speed 0.85 (meditative). Change it:
- Edit the script: change `--speed 0.85` to `--speed 0.7` (slower)

## 🌟 Best Practices

1. **Start simple** - Test with short (1-2 minute) meditations first
2. **Iterate** - Ask GPT to adjust if timing isn't perfect
3. **Save successful scripts** - Keep them for future reference
4. **Share** - Export and share scripts with others

## 📚 Related Docs

- [README.md](README.md) - Main documentation
- [USAGE.md](USAGE.md) - Manual script creation
- [VOICES.md](VOICES.md) - Voice guide

---

**The GPT makes meditation audio creation effortless!** 🎯
