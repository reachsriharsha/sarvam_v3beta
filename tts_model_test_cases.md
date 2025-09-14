# TTS Model Test Cases for Sarvam AI

This document lists test cases for the Sarvam AI Text-to-Speech (TTS) model, based on the testing plan. Each test case includes a table for structured evaluation.

---

## 1. Emotion-Based Testing

### Test: Happy/Enthusiastic (English)
| Input Text                        | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments | Speaker|
|-----------------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|----------|
| Hello, how may I assist you today?| English       | English        |t001_EN2EN_op.wav| Happy            |                   | At the end of voice, 'how ma' is coming, this is not expected          |  sakshi        |

### Test: Apologetic/Regretful (Hindi)
| Input Text                              | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments | Speaker|
|-----------------------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|----------|
| कृपया 5 मिनट प्रतीक्षा करें।                   | Hindi         | Hindi          |                 | Apologetic       |                   |   target_language_code="en-IN", still hindi properly identified.        |  sakshi        |

### Test: Calm/Soothing (Kannada)
| Input Text                                 | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------------------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| ದಯವಿಟ್ಟು ೫ ನಿಮಿಷ ಕಾಯಿರಿ.                  | Kannada       | Kannada        |     t001_KN2KN_op.wav \n t001_KN2KN_op_with_language_kn.wav           | Calm             |                   |     when lanugage is set to english and all the text is given in kannada, number is spoken in english.t001_KN2KN_op.wav But when language is correctly mentioned kannda number came in kannada as well.      |sakshi        |

### Test: Neutral/Professional (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Your account balance is one thousand dollars. | English | English | | Neutral | | Business context |

### Test: Empathetic/Caring (Hindi)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| मुझे सुनकर दुख हुआ, मैं इसमें आपकी मदद कैसे कर सकता हूँ? | Hindi | Hindi | | Empathetic | | Support scenario |

### Test: Confident/Authoritative (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Please follow the instructions carefully. | English | English | | Confident | | Instructional tone |

### Test: Excited/Energetic (Kannada)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| ನಾವು ಈ ಅದ್ಭುತ ಪ್ರಕಟಣೆಯನ್ನು ಹಂಚಿಕೊಳ್ಳಲು ಉತ್ಸುಕರಾಗಿದ್ದೇವೆ! | Kannada | Kannada | | Excited | | Promotional content |

---

## 2. Temporal/Rhythm Testing

### Test: Pause Handling (English)
| Input Text                  | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|-----------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| Please wait for 5 minutes.  | English       | English        |                 | Neutral          |                   | Check pause at period |

### Test: Emphasis Timing (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| The key is to focus on **quality**, not just quantity. | English | English | | Neutral | | Emphasis on 'quality' |

### Test: Numbers and Dates (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| The meeting is on December 15th, 2024, at 3:30 PM. | English | English | | Neutral | | Correctly pronounce date and time |

### Test: Speaking Rate Variation (Kannada)
| Input Text                                 | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------------------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| ನಿಮ್ಮ ಆರ್ಡರ್ ಯಶಸ್ವಿಯಾಗಿ ಪ್ರಕ್ರಿಯೆಗೊಂಡಿದೆ! | Kannada       | Kannada        |                 | Neutral          |                   | Test fast/slow rates |

---

## 3. Pitch and Prosody Testing

### Test: Question Intonation (English)
| Input Text                        | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|-----------------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| How may I assist you today?       | English       | English        |                 | Neutral          |                   | Should have rising pitch |

### Test: Exclamation Handling (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| What a fantastic result! | English | English | | Excited | | Check pitch for exclamation |

### Test: List Intonation (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| We need to buy apples, bananas, and cherries. | English | English | | Neutral | | Check pitch pattern for lists |

### Test: Statement Pattern (Hindi)
| Input Text                              | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|-----------------------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| आपका ऑर्डर सफलतापूर्वक प्रोसेस हो गया है!| Hindi         | Hindi          |                 | Neutral          |                   | Should have falling pitch |

---

## 4. Language-Specific Testing

### Test: Kannada Consonant Clusters
| Input Text                | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| ಪ್ರಕ್ರಿಯೆಗೊಂಡಿದೆ           | Kannada       | Kannada        |                 | Neutral          |                   | Check cluster pronunciation |

### Test: Kannada Vowel Length
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| ಬಾರ (come) vs ಬರ (drought) | Kannada | Kannada | | Neutral | | Distinguish long/short vowels |

### Test: Hindi Nasalization
| Input Text                | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| नमस्ते                    | Hindi         | Hindi          |                 | Neutral          |                   | Check nasalized vowel |

### Test: Hindi Aspiration
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| फल (phal) vs पल (pal) | Hindi | Hindi | | Neutral | | Distinguish aspirated/unaspirated |

### Test: English Abbreviations
| Input Text                | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---------------------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| Dr. Smith will join soon. | English       | English        |                 | Neutral          |                   | Check abbreviation pronunciation |

### Test: English Contractions
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| I won't be able to make it. | English | English | | Neutral | | Correctly pronounce "won't" |

---

## 5. Content Complexity Testing

### Test: Single Word (Kannada)
| Input Text   | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| ನಮಸ್ಕಾರ     | Kannada       | Kannada        |                 | Neutral          |                   |           |

### Test: Short Phrase (Hindi)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| शुभ दिन | Hindi | Hindi | | Neutral | | |

### Test: Simple Sentence (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| The sky is blue. | English | English | | Neutral | | |

### Test: Complex Sentence (English)
| Input Text   | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| Your order has been successfully processed and will be delivered by 3:30 PM tomorrow. | English | English | | Neutral | | Test time phrase and sentence complexity |

### Test: Paragraph (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Sarvam AI is developing advanced text-to-speech models. These models aim to produce natural and emotionally resonant speech across multiple languages, including English, Hindi, and Kannada. This requires extensive testing. | English | English | | Neutral | | Check flow and consistency |

---

## 6. Audio Quality Parameters

### Test: Clarity and Consistency
| Input Text   | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| Hello, how may I assist you today? | English | English | | Neutral | | Listen for distortion/artifacts |
*Note: Audio quality should be assessed for all test cases.*

---

## 7. Performance and Reliability Testing

### Test: Processing Time
| Input Text   | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| Please wait for 5 minutes. | English | English | | Neutral | | Measure conversion speed |

### Test: Concurrent Requests
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Run 10 simultaneous requests with varied text. | N/A | N/A | | N/A | | Check for system stability and response time degradation. |

---

## 8. User Experience Testing

### Test: Pronunciation Accuracy (Hindi)
| Input Text   | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| नमस्ते, मैं आपकी कैसे सहायता कर सकता हूँ? | Hindi | Hindi | | Neutral | | Check for correct pronunciation |

### Test: Speed Adjustment
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Can you please speak faster? Can you please speak slower? | English | English | | Neutral | | Test API control for speech rate. |

---

## 9. Integration Testing

### Test: API Response Format
| Input Text   | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| Hello, how may I assist you today? | English | English | | Neutral | | Validate audio format compatibility |

### Test: Error Handling
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| [Invalid Text/Language] | N/A | N/A | | N/A | | Verify graceful error message from API. |

---

## 10. Evaluation Metrics and Scoring

### Test: MOS and WER
| Input Text   | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|--------------|---------------|----------------|-----------------|------------------|-------------------|----------|
| Your order has been successfully processed! | English | English | | Neutral | | Rate MOS, calculate WER |

---

*Add more rows for each test as needed. Include additional fields such as test date, tester name, or scoring if required for your workflow.*
[Numbers and Numerics Testing]

### Test: Date and Time (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Your appointment is on December 15th, 2024, at 3:30 PM. | English | English | | Neutral | | Check date and time pronunciation |

### Test: Money (Hindi)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| आपको ₹500 का भुगतान करना है। | Hindi | Hindi | | Neutral | | Check currency pronunciation |

### Test: Phone Number (Kannada)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| ದಯವಿಟ್ಟು 080-12345678 ಗೆ ಕರೆ ಮಾಡಿ. | Kannada | Kannada | | Neutral | | Check phone number pronunciation |

### Test: Mixed Numerics (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Please go to the 3rd floor and wait for 5 minutes. | English | English | | Neutral | | Check ordinal and duration |

---

[Mixed Input Testing]

### Test: English + Hindi
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Your order सफलतापूर्वक processed हो गया है! | Mixed | Mixed | | Neutral | | Code-switching test |

### Test: English + Kannada
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Please wait for ೫ minutes. | Mixed | Mixed | | Neutral | | Code-switching test |

### Test: Multiple Scripts
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| नमस्ते, Welcome! | Mixed | Mixed | | Neutral | | Multiple script handling |

---

[Filler Words and Disfluency Testing]

### Test: Filler Words (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Uh, I think we should, um, start now. | English | English | | Neutral | | Check naturalness of fillers |

### Test: Filler Words (Hindi)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| हाँ, मतलब, hmm, आप सही हैं। | Hindi | Hindi | | Neutral | | Check naturalness of fillers |

### Test: Filler Words (Kannada)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| ಹೌದು, ಅಂದರೆ, hmm, ನೀವು ಸರಿಯಾಗಿದ್ದೀರಿ. | Kannada | Kannada | | Neutral | | Check naturalness of fillers |

---

[Proper Noun Testing]

### Test: Person Name (English)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| John Smith will join the meeting. | English | English | | Neutral | | Check name pronunciation |

### Test: Place Name (Hindi)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| मुंबई में सम्मेलन होगा। | Hindi | Hindi | | Neutral | | Check place name pronunciation |

### Test: Brand Name (Kannada)
| Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments |
|---|---|---|---|---|---|---|
| Sarvam AI ಹೊಸ ಉತ್ಪನ್ನವನ್ನು ಬಿಡುಗಡೆ ಮಾಡಿದೆ. | Kannada | Kannada | | Neutral | | Check brand name pronunciation |
