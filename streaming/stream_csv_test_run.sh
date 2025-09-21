#!/bin/bash

# Streaming TTS Model Test Script for Sarvam AI CSV Test Cases
# This script runs all test cases from the CSV format in stream_test_case_plan.md

PYTHON_CMD="/home/sharsha/src/sarvam_v3beta/.venv/bin/python"
SCRIPT="bulbulv3_stream.py"
REPORT_FILE="stream_csv_test_report.md"
CSV_FILE=""

# Array of speakers to rotate through
SPEAKERS=("sakshi" "harsh" "chirag" "ritu" "aditya" "isha" "priya" "neha" "rahul" "pooja")
speaker_index=0

# Initialize report file with header
init_report() {
    cat > "$REPORT_FILE" << 'EOF'
# Streaming TTS Model CSV Test Report for Sarvam AI

This document contains the test report for the Sarvam AI Text-to-Speech (TTS) model testing using CSV test cases from input CSV file. Each test case includes structured evaluation fields.

---

| Test Case Name | Sample Text | Expected Emotion | Expected Tone | Language | Use Case | Output WAV File | Execution Time | Perceived Emotion | Perceived Tone | Comments | Speaker |
|---|---|---|---|---|---|---|---|---|---|---|---|
EOF
}

# Function to get next speaker (changes every 5 test cases)
get_speaker() {
    local test_num=$1
    local speaker_group=$((($test_num - 1) / 5))
    local speaker_idx=$(($speaker_group % ${#SPEAKERS[@]}))
    echo "${SPEAKERS[$speaker_idx]}"
}

# Function to map language names to language codes
map_language() {
    local lang=$1
    case $lang in
        "English") echo "en-IN" ;;
        "Hindi") echo "hi-IN" ;;
        "Kannada") echo "kn-IN" ;;
        *) echo "en-IN" ;;  # Default to English
    esac
}

# Function to clean and escape text for safe processing
clean_text() {
    local text="$1"
    # Remove leading/trailing quotes and escape special characters
    text="${text#\"}"
    text="${text%\"}"
    # Escape single quotes for shell safety
    text="${text//\'/\'\"\'\"\'}"
    echo "$text"
}

# Function to read CSV data from input file
read_csv_data() {
    local csv_file="$1"
    # Skip header line and read the rest
    tail -n +2 "$csv_file"
}

# Function to run TTS test
run_test() {
    local test_num=$1
    local sample_text="$2"
    local emotion_expected="$3"
    local tone_expected="$4"
    local language="$5"
    local use_case="$6"
    local speaker=$(get_speaker $test_num)
    local language_code=$(map_language "$language")
    local output_file="stream_t$(printf '%03d' $test_num)_${language}_${use_case}_${speaker}_op.wav"
    local test_name="Test_${test_num}_${language}_${use_case}"
    
    # Clean the text for safe processing
    local clean_sample_text=$(clean_text "$sample_text")
    
    echo "Running Test $test_num: $test_name with speaker: $speaker"
    echo "Language: $language ($language_code)"
    echo "Use Case: $use_case"
    echo "Expected Emotion: $emotion_expected"
    echo "Expected Tone: $tone_expected"
    echo "Text: $clean_sample_text"
    echo "Output: $output_file"
    echo "----------------------------------------"
    
    # Capture the output from the TTS command
    local tts_output
    tts_output=$($PYTHON_CMD $SCRIPT --language="$language_code" --speaker="$speaker" --text="$clean_sample_text" --output="$output_file" 2>&1)
    local exit_code=$?
    
    # Extract execution time from the output
    local execution_time=""
    if echo "$tts_output" | grep -q "Audio generation complete. Total time:"; then
        execution_time=$(echo "$tts_output" | grep "Audio generation complete. Total time:" | sed -n 's/.*Total time: \([^ ]*\) seconds.*/\1/p')
    fi
    
    # Display the captured output
    echo "$tts_output"
    
    if [ $exit_code -eq 0 ]; then
        echo "✓ Test $test_num completed successfully"
        echo "⏱️  Execution time: $execution_time"
        # Append result to markdown report (escape text for markdown)
        local escaped_text="${clean_sample_text//|/\\|}"
        echo "| $test_name | $escaped_text | $emotion_expected | $tone_expected | $language | $use_case | $output_file | $execution_time | | | | $speaker |" >> "$REPORT_FILE"
    else
        echo "✗ Test $test_num failed"
        # Append failed result to markdown report
        local escaped_text="${clean_sample_text//|/\\|}"
        echo "| $test_name | $escaped_text | $emotion_expected | $tone_expected | $language | $use_case | $output_file | FAILED | | | FAILED TO GENERATE | $speaker |" >> "$REPORT_FILE"
    fi
    
    echo "Sleeping for 3 seconds..."
    sleep 3
    echo ""
}

# Function to parse CSV line and handle quoted fields properly
parse_csv_line() {
    local line="$1"
    local -a fields=()
    local field=""
    local in_quotes=false
    local i=0
    
    while [ $i -lt ${#line} ]; do
        char="${line:$i:1}"
        
        if [ "$char" = "\"" ]; then
            if [ "$in_quotes" = true ]; then
                # Check if next character is also a quote (escaped quote)
                if [ $((i+1)) -lt ${#line} ] && [ "${line:$((i+1)):1}" = "\"" ]; then
                    field="$field\""
                    ((i++))
                else
                    in_quotes=false
                fi
            else
                in_quotes=true
            fi
        elif [ "$char" = "," ] && [ "$in_quotes" = false ]; then
            fields+=("$field")
            field=""
        else
            field="$field$char"
        fi
        ((i++))
    done
    
    # Add the last field
    fields+=("$field")
    
    # Return the fields
    printf '%s\n' "${fields[@]}"
}

echo "Starting Streaming TTS Model CSV Tests..."
echo "========================================"

# Check command line arguments
if [ $# -ne 1 ]; then
    echo "Usage: $0 <csv_file>"
    echo "Example: $0 test_cases.csv"
    exit 1
fi

CSV_FILE="$1"

# Check if CSV file exists
if [ ! -f "$CSV_FILE" ]; then
    echo "Error: CSV file '$CSV_FILE' not found!"
    exit 1
fi

echo "Using CSV file: $CSV_FILE"

# Initialize the report file
init_report

# Extract CSV data and process each line
test_counter=1
total_tests=0

# First, count total tests
while IFS= read -r line; do
    if [ -n "$line" ]; then
        ((total_tests++))
    fi
done < <(read_csv_data "$CSV_FILE")

echo "Found $total_tests test cases to process"
echo ""

# Process each CSV line
while IFS= read -r line; do
    if [ -n "$line" ]; then
        echo "Processing line: $line"
        
        # Parse the CSV line
        readarray -t fields < <(parse_csv_line "$line")
        
        if [ ${#fields[@]} -eq 5 ]; then
            sample_text="${fields[0]}"
            emotion_expected="${fields[1]}"
            tone_expected="${fields[2]}"
            language="${fields[3]}"
            use_case="${fields[4]}"
            
            run_test $test_counter "$sample_text" "$emotion_expected" "$tone_expected" "$language" "$use_case"
            ((test_counter++))
        else
            echo "Warning: Skipping malformed CSV line with ${#fields[@]} fields: $line"
        fi
    fi
done < <(read_csv_data "$CSV_FILE")

echo "========================================"
echo "All Streaming TTS CSV tests completed!"
echo "Check the generated WAV files for results."
echo "Report has been automatically generated in: $REPORT_FILE"

# Add completion timestamp and summary to report
cat >> "$REPORT_FILE" << EOF

---

## Test Execution Summary

- **Total Tests Run**: $((test_counter - 1))
- **Completion Time**: $(date)
- **Generated WAV Files**: stream_t001_* to stream_t$(printf '%03d' $((test_counter - 1)))_*
- **Filename Format**: stream_t###_Language_UseCase_Speaker_op.wav
- **Speaker Distribution**: Rotates through speakers every 5 tests
  - Tests 1-5: sakshi
  - Tests 6-10: harsh  
  - Tests 11-15: chirag
  - Tests 16-20: ritu
  - Tests 21-25: aditya
  - Tests 26-30: isha
  - Tests 31-35: priya
  - Tests 36-40: neha
  - Tests 41-45: rahul
  - Tests 46+: pooja (and cycling continues)

## Languages Tested
- **English**: Stress patterns, linking sounds
- **Hindi**: Aspirated consonants, vowel length  
- **Kannada**: Retroflex sounds, gemination

## Emotions and Tones Covered
- **Emotions**: Neutral, Joy, Concern, Gratitude, Disappointment, Curiosity, Affection, Urgency, Contentment, Regret, Surprise
- **Tones**: Conversational, Enthusiastic, Cautionary, Warm, Formal_complaint, Storytelling, Informative, Tender, Polite_request, Celebratory, Emergency, Casual, Formal_apology, Instructional, Delighted

## Next Steps

1. Listen to each generated WAV file
2. Fill in the empty columns (Perceived Emotion, Perceived Tone, Comments)
3. Rate the quality and naturalness of each audio output
4. Document any issues or observations in the Comments column
5. Compare perceived vs expected emotions and tones
6. Note language-specific pronunciation accuracy

## Evaluation Criteria

1. **Prosody**: Listen for appropriate rhythm, stress, and intonation
2. **Emotion**: Assess if the synthetic voice conveys the intended emotion
3. **Naturalness**: Evaluate how human-like the speech sounds
4. **Clarity**: Check pronunciation accuracy, especially for complex words
5. **Tone variation**: Ensure different tones are distinguishable
6. **Language consistency**: Verify proper accent and pronunciation for each language

---

*Report automatically generated by stream_csv_test_run.sh*
EOF

echo ""
echo "Summary:"
echo "- Processed $((test_counter - 1)) test cases"
echo "- Report saved to: $REPORT_FILE"
echo "- WAV files generated with pattern: stream_t###_Language_UseCase_Speaker_op.wav"