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
run_test 1 "kn-IN" "ನಮಸ್ಕಾರ, ಹೀಗಿದ್ದೀರಾ? ನಿಮಗೆ ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಲಿ?" "t001_KN2KN_op.wav" "Happy/Enthusiastic (English)"

# Test 2: Neutral/Professional (English)
run_test 2 "kn-IN" "ನಿಮ್ಮ ಖಾತೆಯಲ್ಲಿ ಸುಮಾರು ಒಂದು ನೂರು ರೂಪಾಯಿಗಳಿವೆ ." "t002_KN2KN_op.wav" "Neutral/Professional (English)"

# Test 3: Confident/Authoritative (English) - Speaker changes to harsh
run_test 3 "kn-IN" "ದಯವಿಟ್ಟು ಸೂಚನೆಗಳನ್ನು ಗಮನದಿಂದ ಅನುಸರಿಸಿ." "t003_KN2KN_op.wav" "Confident/Authoritative (English)"

# Test 4: Pause Handling (English)
run_test 4 "kn-IN" "ದಯವಿಟ್ಟು 5 ನಿಮಿಷಗಳ ಕಾಲ ಕಾಯಿರಿ." "t004_KN2KN_op.wav" "Pause Handling (English)"

# Test 5: Emphasis Timing (English)
run_test 5 "kn-IN" "ನಾವು ಗುಣಮಟ್ಟದ ಮೇಲೆ ಗಮನ ಕೊಡಬೇಕು, ಬರಿ ಪ್ರಮಾಣದಿಂದ ಒಳ್ಳೇದು ಆಗಲ್ಲ." "t005_KN2KN_op.wav" "Emphasis Timing (English)"

# Test 6: Numbers and Dates (English)
run_test 6 "kn-IN" "ವಾರ್ಷಿಕ ಸಭೆ ಡಿಸೆಂಬರ್ 15, 2024 ರಂದು ಮಧ್ಯಾಹ್ನ 3:30 ಕ್ಕೆ ಇದೆ." "t006_KN2KN_op.wav" "Numbers and Dates (English)"

# Test 7: Exclamation Handling (English)
run_test 7 "kn-IN" "ಎಂತಹ ಅದ್ಭುತ ಫಲಿತಾಂಶ!" "t007_KN2KN_op.wav" "Exclamation Handling (English)"

# Test 8: List Intonation (English)
run_test 8 "kn-IN" "ನಾವು ಸೇಬು, ಬಾಳೆಹಣ್ಣು ಮತ್ತು ಚೆರ್ರಿಗಳನ್ನು ಖರೀದಿಸಬೇಕು." "t008_KN2KN_op.wav" "List Intonation (English)"

# Test 9: English Abbreviations
run_test 9 "kn-IN" "ಡಾ  ಸ್ಮಿತ್ ಇನ್ನೇನು ಸ್ವಲ್ಪ ಹೊತ್ತಲ್ಲಿ ಬಂದು ಬಿಡ್ತಾರೆ." "t009_KN2KN_op.wav" "English Abbreviations"

# Test 10: English Contractions - Speaker changes to aditya
run_test 10 "kn-IN" "ಅಯ್ಯೋ ನಂಗೆ ಬರೋಕೆ ಆಗೋಲ್ಲ. " "t010_KN2KN_op.wav" "English Contractions"

# Test 11: Simple Sentence (English)
run_test 11 "kn-IN" "ಆಕಾಶ ನೀಲಿ ಬಣ್ಣದಿಂದ ತುಂಬಿ ಚೆನ್ನಾಗಿ ಕಾಣಿಸ್ತಾ ಇದೆ." "t011_KN2KN_op.wav" "Simple Sentence (English)"

# Test 12: Complex Sentence (English)
run_test 12 "kn-IN" "ನಿಮ್ಮ ಆರ್ಡರ್ ಅನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಮುಗಿಸಲಾಗಿದೆ ಮತ್ತು ನಾಳೆ ಮಧ್ಯಾಹ್ನ 3:30 ರೊಳಗೆ ನಿಮ್ಮ ಸಾಮಾನು ನಿಮ್ಮನ್ನು ತಲುಪುತ್ತದೆ." "t012_KN2KN_op.wav" "Complex Sentence (English)"

# Test 13: Paragraph (English) - Speaker changes to isha
run_test 13 "kn-IN" "ಸರ್ವಂ AI ಸಂಸ್ಥೆ ಸುಧಾರಿತ ಪಠ್ಯದಿಂದ ಮೌಖಿಕ AI ಮಾದರಿಗಳನ್ನು ಅಭಿವೃದ್ಧಿಪಡಿಸುತ್ತಿದೆ. ಈ AI ಮಾದರಿಗಳು ಇಂಗ್ಲಿಷ್, ಹಿಂದಿ ಮತ್ತು ಕನ್ನಡ ಸೇರಿದಂತೆ ಬಹು ಭಾಷೆಗಳಲ್ಲಿ ಸಹಜ ಮತ್ತು ಭಾವನಾತ್ಮಕವಾಗಿ ಧ್ವನಿಗಳನ್ನು  ಉತ್ಪಾದಿಸುವ ಗುರಿಯನ್ನು ಹೊಂದಿವೆ. ಇದಕ್ಕೆ ವ್ಯಾಪಕವಾದ ಪರೀಕ್ಷೆಯ ಅಗತ್ಯವಿದೆ." "t013_KN2KN_op.wav" "Paragraph (English)"

# Test 14: Speed Adjustment (English)
run_test 14 "kn-IN" "ದಯವಿಟ್ಟು ವೇಗವಾಗಿ ಮಾತನಾಡಬಲ್ಲಿರಾ? ಬೇಡ, ದಯವಿಟ್ಟು ನಿಧಾನವಾಗಿ ಮಾತನಾಡಬಲ್ಲಿರಾ?" "t014_KN2KN_op.wav" "Speed Adjustment (English)"

# Test 15: Mixed Numerics (English)
run_test 15 "kn-IN" "ದಯವಿಟ್ಟು ಮೂರನೇ ಮಹಡಿಗೆ ಹೋಗಿ 5 ನಿಮಿಷ ಕಾಯಿರಿ." "t015_KN2KN_op.wav" "Mixed Numerics (English)"

# Test 16: English + Kannada (Mixed) - Speaker changes to neha
run_test 16 "kn-IN" "ನಿಮ್ಮ ಆರ್ಡರ್ ಅನ್ನು ಸಕ್ಸಸ್ ಆಗಿ ಪ್ರೋಸೆಸ್  ಮಾಡಿದ್ದೇವೆ." "t016_MIXED_op.wav" "English + Kannada (Mixed)"

# Test 17: English + Kannada (Mixed)
run_test 17 "kn-IN" "ದಯವಿಟ್ಟು ಒಂದು 55 ನಿಮಿಷ ಕಾಯಿರಿ" "t017_MIXED_op.wav" "English + Kannada (Mixed)"

# Test 18: Multiple Scripts (Mixed)
run_test 18 "kn-IN" "ನಮಸ್ಕಾರ, ಬನ್ನಿ ಬನ್ನಿ welcome !" "t018_MIXED_op.wav" "Multiple Scripts (Mixed)"

# Test 19: Filler Words (English)
run_test 19 "kn-IN" "ಹ್ಞೂ ನನಗನ್ನಿಸುತ್ತದೆ ನಾವು ಈಗಲೇ ಪ್ರಾರಂಭಿಸಬೇಕು ಅಂತ ." "t019_KN2KN_op.wav" "Filler Words (English)"

# Test 20: Person Name (English)
run_test 20 "kn-IN" "ಜಾನ್ ಸ್ಮಿತ್ ಸಭೆಯಲ್ಲಿ ಭಾಗವಹಿಸಲಿದ್ದಾರೆ." "t020_KN2KN_op.wav" "Person Name (English)"

# Test 21: Person Name (English)
run_test 21 "kn-IN" "ನಾರಾಯಣ ಸ್ವಾಮಿ, ಜಲಜಾಕ್ಷಿ, ರಂಗಪ್ಪ ಮತ್ತು ರೋಹಿತ್ ಜಾನ್ ಸ್ಮಿತ್ ಅವರೊಂದಿಗೆ ಜೂಮ್ meeting ge ಸೇರಿಕೊಳ್ಳುತ್ತಾರೆ." "t021_KN2KN_op.wav" "Person Name (English)"

echo "========================================"
echo "All TTS tests completed!"
echo "Check the generated WAV files for results."
echo "Report has been automatically generated in: $REPORT_FILE"

# Add completion timestamp and summary to report
cat >> "$REPORT_FILE" << EOF

---

## Test Execution Summary

- **Total Tests Run**: 21
- **Completion Time**: $(date)
- **Generated WAV Files**: t001_KN2KN_op.wav to t021_KN2KN_op.wav

## Next Steps

1. Listen to each generated WAV file
2. Fill in the empty columns (Output Language, Expected Emotion, Perceived Emotion, Comments)
3. Rate the quality and naturalness of each audio output
4. Document any issues or observations in the Comments column

---
EOF
