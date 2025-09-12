#!/bin/bash

# TTS Model Test Script for Sarvam AI
# This script runs all test cases from tts_model_test_cases.md

PYTHON_CMD="/home/sharsha/src/sarvam_v3beta/.venv/bin/python"
SCRIPT="bulbulv3.py"
REPORT_FILE="tts_test_report.md"

# Array of speakers to rotate through
SPEAKERS=("sakshi" "harsh" "chirag" "ritu" "aditya" "isha" "priya" "neha" "rahul" "pooja")
speaker_index=0

# Initialize report file with header
init_report() {
    cat > "$REPORT_FILE" << 'EOF'
# TTS Model Test Report for Sarvam AI

This document contains the test report for the Sarvam AI Text-to-Speech (TTS) model testing. Each test case includes structured evaluation fields.

---

| Test Case Name | Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments | Speaker |
|---|---|---|---|---|---|---|---|---|
EOF
}

# Function to get next speaker (changes every 5 test cases)
get_speaker() {
    local test_num=$1
    local speaker_group=$((($test_num - 1) / 5))
    local speaker_idx=$(($speaker_group % ${#SPEAKERS[@]}))
    echo "${SPEAKERS[$speaker_idx]}"
}

# Function to run TTS test
run_test() {
    local test_num=$1
    local language=$2
    local text=$3
    local output_file=$4
    local test_name=$5
    local speaker=$(get_speaker $test_num)
    
    echo "Running Test $test_num: $test_name with speaker: $speaker"
    echo "Language: $language"
    echo "Text: $text"
    echo "Output: $output_file"
    echo "----------------------------------------"
    
    $PYTHON_CMD $SCRIPT --language="$language" --speaker="$speaker" --text="$text" --output="$output_file"
    
    if [ $? -eq 0 ]; then
        echo "✓ Test $test_num completed successfully"
        # Append result to markdown report
        echo "| $test_name | $text | $language | | $output_file | | | | $speaker |" >> "$REPORT_FILE"
    else
        echo "✗ Test $test_num failed"
        # Append failed result to markdown report
        echo "| $test_name | $text | $language | | $output_file | | | FAILED TO GENERATE | $speaker |" >> "$REPORT_FILE"
    fi
    
    echo "Sleeping for 5 seconds..."
    sleep 5
    echo ""
}

echo "Starting TTS Model Tests..."
echo "========================================"

# Initialize the report file
init_report

# Test 1: Happy/Enthusiastic (English)
run_test 1 "en-IN" "Hello, how may I assist you today?" "t001_EN2EN_op.wav" "Happy/Enthusiastic (English)"

# Test 2: Neutral/Professional (English)
run_test 2 "en-IN" "Your account balance is one thousand dollars." "t002_EN2EN_op.wav" "Neutral/Professional (English)"

# Test 3: Confident/Authoritative (English) - Speaker changes to harsh
run_test 3 "en-IN" "Please follow the instructions carefully." "t003_EN2EN_op.wav" "Confident/Authoritative (English)"

# Test 4: Pause Handling (English)
run_test 4 "en-IN" "Please wait for 5 minutes." "t004_EN2EN_op.wav" "Pause Handling (English)"

# Test 5: Emphasis Timing (English)
run_test 5 "en-IN" "The key is to focus on quality, not just quantity." "t005_EN2EN_op.wav" "Emphasis Timing (English)"

# Test 6: Numbers and Dates (English)
run_test 6 "en-IN" "The meeting is on December 15th, 2024, at 3:30 PM." "t006_EN2EN_op.wav" "Numbers and Dates (English)"

# Test 7: Exclamation Handling (English)
run_test 7 "en-IN" "What a fantastic result!" "t007_EN2EN_op.wav" "Exclamation Handling (English)"

# Test 8: List Intonation (English)
run_test 8 "en-IN" "We need to buy apples, bananas, and cherries." "t008_EN2EN_op.wav" "List Intonation (English)"

# Test 9: English Abbreviations
run_test 9 "en-IN" "Dr. Smith will join soon." "t009_EN2EN_op.wav" "English Abbreviations"

# Test 10: English Contractions - Speaker changes to aditya
run_test 10 "en-IN" "I won't be able to make it." "t010_EN2EN_op.wav" "English Contractions"

# Test 11: Simple Sentence (English)
run_test 11 "en-IN" "The sky is blue." "t011_EN2EN_op.wav" "Simple Sentence (English)"

# Test 12: Complex Sentence (English)
run_test 12 "en-IN" "Your order has been successfully processed and will be delivered by 3:30 PM tomorrow." "t012_EN2EN_op.wav" "Complex Sentence (English)"

# Test 13: Paragraph (English) - Speaker changes to isha
run_test 13 "en-IN" "Sarvam AI is developing advanced text-to-speech models. These models aim to produce natural and emotionally resonant speech across multiple languages, including English, Hindi, and Kannada. This requires extensive testing." "t013_EN2EN_op.wav" "Paragraph (English)"

# Test 14: Speed Adjustment (English)
run_test 14 "en-IN" "Can you please speak faster? Can you please speak slower?" "t014_EN2EN_op.wav" "Speed Adjustment (English)"

# Test 15: Mixed Numerics (English)
run_test 15 "en-IN" "Please go to the 3rd floor and wait for 5 minutes." "t015_EN2EN_op.wav" "Mixed Numerics (English)"

# Test 16: English + Hindi (Mixed) - Speaker changes to neha
run_test 16 "en-IN" "Your order सफलतापूर्वक processed हो गया है!" "t016_MIXED_op.wav" "English + Hindi (Mixed)"

# Test 17: English + Kannada (Mixed)
run_test 17 "en-IN" "Please wait for ೫ minutes." "t017_MIXED_op.wav" "English + Kannada (Mixed)"

# Test 18: Multiple Scripts (Mixed)
run_test 18 "en-IN" "नमस्ते, Welcome!" "t018_MIXED_op.wav" "Multiple Scripts (Mixed)"

# Test 19: Filler Words (English)
run_test 19 "en-IN" "Uh, I think we should, um, start now." "t019_EN2EN_op.wav" "Filler Words (English)"

# Test 20: Person Name (English)
run_test 20 "en-IN" "John Smith will join the meeting." "t020_EN2EN_op.wav" "Person Name (English)"

# Test 21: Person Name (English)
run_test 21 "en-IN" "Narayana swamy, jalajakshi, RanGAppa and Rohit will join the meeting along with John Smith for zoom presentation meeting." "t021_EN2EN_op.wav" "Person Name (English)"

echo "========================================"
echo "All TTS tests completed!"
echo "Check the generated WAV files for results."
echo "Report has been automatically generated in: $REPORT_FILE"

# Add completion timestamp and summary to report
cat >> "$REPORT_FILE" << EOF

---

## Test Execution Summary

- **Total Tests Run**: 44
- **Completion Time**: $(date)
- **Generated WAV Files**: t001_EN2EN_op.wav to t044_KN2KN_op.wav
- **Speaker Distribution**: 
  - Tests 1-5: sakshi
  - Tests 6-10: harsh
  - Tests 11-15: chirag
  - Tests 16-20: ritu
  - Tests 21-25: aditya
  - Tests 26-30: isha
  - Tests 31-35: priya
  - Tests 36-40: neha
  - Tests 41-44: rahul

## Next Steps

1. Listen to each generated WAV file
2. Fill in the empty columns (Output Language, Expected Emotion, Perceived Emotion, Comments)
3. Rate the quality and naturalness of each audio output
4. Document any issues or observations in the Comments column

---

*Report automatically generated by run_tts_tests.sh*
EOF
