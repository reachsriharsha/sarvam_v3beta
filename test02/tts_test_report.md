# TTS Model Test Report for Sarvam AI

This document contains the test report for the Sarvam AI Text-to-Speech (TTS) model testing. Each test case includes structured evaluation fields.

---

| Test Case Name | Input Text | Input Language | Output Language | Output WAV File | Expected Emotion | Perceived Emotion | Comments | Speaker |
|---|---|---|---|---|---|---|---|---|
| Happy/Enthusiastic (English) | ನಮಸ್ಕಾರ, ಹೀಗಿದ್ದೀರಾ? ನಿಮಗೆ ನಾನು ಹೇಗೆ ಸಹಾಯ ಮಾಡಲಿ? | kn-IN | | t001_KN2KN_op.wav | | |✅  | sakshi |
| Neutral/Professional (English) | ನಿಮ್ಮ ಖಾತೆಯಲ್ಲಿ ಸುಮಾರು ಒಂದು ನೂರು ರೂಪಾಯಿಗಳಿವೆ . | kn-IN | | t002_KN2KN_op.wav | | | ❌ There is subtle gap between number and the word| sakshi |
| Confident/Authoritative (English) | ದಯವಿಟ್ಟು ಸೂಚನೆಗಳನ್ನು ಗಮನದಿಂದ ಅನುಸರಿಸಿ. | kn-IN | | t003_KN2KN_op.wav | | | ✅| sakshi |
| Pause Handling (English) | ದಯವಿಟ್ಟು 5 ನಿಮಿಷಗಳ ಕಾಲ ಕಾಯಿರಿ. | kn-IN | | t004_KN2KN_op.wav | | | ✅| sakshi |
| Emphasis Timing (English) | ನಾವು ಗುಣಮಟ್ಟದ ಮೇಲೆ ಗಮನ ಕೊಡಬೇಕು, ಬರಿ ಪ್ರಮಾಣದಿಂದ ಒಳ್ಳೇದು ಆಗಲ್ಲ. | kn-IN | | t005_KN2KN_op.wav | | | ✅| sakshi |
| Numbers and Dates (English) | ವಾರ್ಷಿಕ ಸಭೆ ಡಿಸೆಂಬರ್ 15, 2024 ರಂದು ಮಧ್ಯಾಹ್ನ 3:30 ಕ್ಕೆ ಇದೆ. | kn-IN | | t006_KN2KN_op.wav | | | ✅ Its good, but Indian languages have clear nuance, for example 3:30kke is not in usual way we speak.| harsh |
| Exclamation Handling (English) | ಎಂತಹ ಅದ್ಭುತ ಫಲಿತಾಂಶ! | kn-IN | | t007_KN2KN_op.wav | | | ❌ No feelings at all| harsh |
| List Intonation (English) | ನಾವು ಸೇಬು, ಬಾಳೆಹಣ್ಣು ಮತ್ತು ಚೆರ್ರಿಗಳನ್ನು ಖರೀದಿಸಬೇಕು. | kn-IN | | t008_KN2KN_op.wav | | |✅ | harsh |
| English Abbreviations | ಡಾ.  ಸ್ಮಿತ್ ಇನ್ನೇನು ಸ್ವಲ್ಪ ಹೊತ್ತಲ್ಲಿ ಬಂದು ಬಿಡ್ತಾರೆ. | kn-IN | | t009_KN2KN_op.wav | | |✅ **Very Good** specially the model understands difference between Dr and Dr.(with a dot) | harsh |
| English Contractions | ಅಯ್ಯೋ ನಂಗೆ ಬರೋಕೆ ಆಗೋಲ್ಲ.  | kn-IN | | t010_KN2KN_op.wav | | | ❌ No expressions at all| harsh |
| Simple Sentence (English) | ಆಕಾಶ ನೀಲಿ ಬಣ್ಣದಿಂದ ತುಂಬಿ ಚೆನ್ನಾಗಿ ಕಾಣಿಸ್ತಾ ಇದೆ. | kn-IN | | t011_KN2KN_op.wav | | | ✅| chirag |
| Complex Sentence (English) | ನಿಮ್ಮ ಆರ್ಡರ್ ಅನ್ನು ಯಶಸ್ವಿಯಾಗಿ ಮುಗಿಸಲಾಗಿದೆ ಮತ್ತು ನಾಳೆ ಮಧ್ಯಾಹ್ನ 3:30 ರೊಳಗೆ ನಿಮ್ಮ ಸಾಮಾನು ನಿಮ್ಮನ್ನು ತಲುಪುತ್ತದೆ. | kn-IN | | t012_KN2KN_op.wav | | |❌ same issue as befoe 3:30kke is not in usual way we speak. | chirag |
| Paragraph (English) | ಸರ್ವಂ AI ಸಂಸ್ಥೆ ಸುಧಾರಿತ ಪಠ್ಯದಿಂದ ಮೌಖಿಕ AI ಮಾದರಿಗಳನ್ನು ಅಭಿವೃದ್ಧಿಪಡಿಸುತ್ತಿದೆ. ಈ AI ಮಾದರಿಗಳು ಇಂಗ್ಲಿಷ್, ಹಿಂದಿ ಮತ್ತು ಕನ್ನಡ ಸೇರಿದಂತೆ ಬಹು ಭಾಷೆಗಳಲ್ಲಿ ಸಹಜ ಮತ್ತು ಭಾವನಾತ್ಮಕವಾಗಿ ಧ್ವನಿಗಳನ್ನು  ಉತ್ಪಾದಿಸುವ ಗುರಿಯನ್ನು ಹೊಂದಿವೆ. ಇದಕ್ಕೆ ವ್ಯಾಪಕವಾದ ಪರೀಕ್ಷೆಯ ಅಗತ್ಯವಿದೆ. | kn-IN | | t013_KN2KN_op.wav | | | ✅ **Very Good** punctuations are really good with expressions also. | chirag |
| Speed Adjustment (English) | ದಯವಿಟ್ಟು ವೇಗವಾಗಿ ಮಾತನಾಡಬಲ್ಲಿರಾ? ಬೇಡ, ದಯವಿಟ್ಟು ನಿಧಾನವಾಗಿ ಮಾತನಾಡಬಲ್ಲಿರಾ? | kn-IN | | t014_KN2KN_op.wav | | |✅ | chirag |
| Mixed Numerics (English) | ದಯವಿಟ್ಟು ಮೂರನೇ ಮಹಡಿಗೆ ಹೋಗಿ 5 ನಿಮಿಷ ಕಾಯಿರಿ. | kn-IN | | t015_KN2KN_op.wav | | |✅ | chirag |
| English + Kannada (Mixed) | ನಿಮ್ಮ ಆರ್ಡರ್ ಅನ್ನು ಸಕ್ಸಸ್ ಆಗಿ ಪ್ರೋಸೆಸ್  ಮಾಡಿದ್ದೇವೆ. | kn-IN | | t016_MIXED_op.wav | | |✅ | ritu |
| English + Kannada (Mixed) | ದಯವಿಟ್ಟು ಒಂದು 55 ನಿಮಿಷ ಕಾಯಿರಿ | kn-IN | | t017_MIXED_op.wav | | | ✅| ritu |
| Multiple Scripts (Mixed) | ನಮಸ್ಕಾರ, ಬನ್ನಿ ಬನ್ನಿ welcome ! | kn-IN | | t018_MIXED_op.wav | | |✅ | ritu |
| Filler Words (English) | ಹ್ಞೂ ನನಗನ್ನಿಸುತ್ತದೆ ನಾವು ಈಗಲೇ ಪ್ರಾರಂಭಿಸಬೇಕು ಅಂತ . | kn-IN | | t019_KN2KN_op.wav | | |✅ | ritu |
| Person Name (English) | ಜಾನ್ ಸ್ಮಿತ್ ಸಭೆಯಲ್ಲಿ ಭಾಗವಹಿಸಲಿದ್ದಾರೆ. | kn-IN | | t020_KN2KN_op.wav | | |✅ | ritu |
| Person Name (English) | ನಾರಾಯಣ ಸ್ವಾಮಿ, ಜಲಜಾಕ್ಷಿ, ರಂಗಪ್ಪ ಮತ್ತು ರೋಹಿತ್ ಜಾನ್ ಸ್ಮಿತ್ ಅವರೊಂದಿಗೆ ಜೂಮ್ meeting ge ಸೇರಿಕೊಳ್ಳುತ್ತಾರೆ. | kn-IN | | t021_KN2KN_op.wav | | | ❌ Clear spelling mistake seen. | aditya |

---

## Test Execution Summary

- **Total Tests Run**: 21
- **Completion Time**: Fri Sep 12 05:49:28 UTC 2025
- **Generated WAV Files**: t001_KN2KN_op.wav to t021_KN2KN_op.wav

## Next Steps

1. Listen to each generated WAV file
2. Fill in the empty columns (Output Language, Expected Emotion, Perceived Emotion, Comments)
3. Rate the quality and naturalness of each audio output
4. Document any issues or observations in the Comments column

---
