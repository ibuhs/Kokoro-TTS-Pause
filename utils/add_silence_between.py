#!/usr/bin/env python3
"""
Add silence between audio segments
Usage: python add_silence_between.py input1.wav input2.wav output.wav --pause 2.0
"""

import sys
import numpy as np
import soundfile as sf

def add_silence(audio_files, output_file, pause_seconds=2.0):
    """Merge audio files with silence between them"""
    segments = []
    sample_rate = None
    
    for audio_file in audio_files:
        data, sr = sf.read(audio_file)
        if sample_rate is None:
            sample_rate = sr
        elif sample_rate != sr:
            print(f"Warning: Sample rate mismatch in {audio_file}")
        segments.append(data)
        
        # Add silence (except after last file)
        if audio_file != audio_files[-1]:
            silence_samples = int(pause_seconds * sample_rate)
            silence = np.zeros(silence_samples)
            segments.append(silence)
    
    # Concatenate all segments
    final_audio = np.concatenate(segments)
    
    # Save
    sf.write(output_file, final_audio, sample_rate)
    print(f"✅ Created {output_file} with {pause_seconds}s pauses")
    print(f"   Total duration: {len(final_audio)/sample_rate:.2f} seconds")

if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Usage: python add_silence_between.py input1.wav input2.wav output.wav --pause 2.0")
        sys.exit(1)
    
    # Parse arguments
    pause = 2.0
    if "--pause" in sys.argv:
        pause_idx = sys.argv.index("--pause")
        pause = float(sys.argv[pause_idx + 1])
        input_files = sys.argv[1:pause_idx]
        output_file = input_files.pop()
    else:
        input_files = sys.argv[1:-1]
        output_file = sys.argv[-1]
    
    add_silence(input_files, output_file, pause)

