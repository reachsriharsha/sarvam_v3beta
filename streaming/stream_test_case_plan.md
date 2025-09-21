# Multilingual Text-to-Speech Test Dataset

## CSV Format
```csv
sample_text,emotion_expected,tone_expected,language,use_case
"Hello, how are you today? I hope you're having a wonderful morning. It's such a pleasure to see you again after so long. How has your family been doing lately? I was just thinking about you yesterday.",neutral,conversational,English,greeting
"I'm so excited about this opportunity! This could be the breakthrough I've been waiting for my entire career. I can barely contain my enthusiasm right now. Thank you for believing in me and giving me this chance. I promise I won't let you down!",joy,enthusiastic,English,excitement
"Please be careful while crossing the road. The traffic here is quite heavy during rush hour. Make sure to look both ways before stepping onto the street. I've seen several accidents at this intersection recently. Your safety is what matters most to me.",concern,cautionary,English,warning
"Thank you so much for your help. I don't know what I would have done without your support. You went above and beyond to assist me today. Your kindness has truly touched my heart. I'm incredibly grateful to have someone like you in my life.",gratitude,warm,English,appreciation
"I'm really disappointed with the service. The quality has declined significantly over the past few months. My expectations were not met despite paying premium prices. This is not the standard I was promised initially. I hope you can address these issues promptly.",disappointment,formal_complaint,English,complaint
"Once upon a time, there was a brave little mouse. He lived in a cozy hole beneath the old oak tree. Every day, he would venture out to explore the magical forest. The other animals admired his courage and determination. Little did they know, his greatest adventure was yet to come.",curiosity,storytelling,English,narration
"The meeting is scheduled for 3 PM tomorrow. Please make sure to bring all the necessary documents with you. We'll be discussing the quarterly reports and future projections. The conference room has been booked for two hours. Light refreshments will be provided during the break.",neutral,informative,English,announcement
"I love spending time with my family. These precious moments create memories that last forever. Watching my children grow and learn fills my heart with joy. Every laugh, every hug, every shared meal is a treasure. There's nothing more important than these bonds we share.",affection,tender,English,personal
"Can you please help me with this problem? I've been struggling with it for quite some time now. Your expertise in this area would be invaluable to me. I would really appreciate any guidance you can provide. Thank you for taking the time to consider my request.",neutral,polite_request,English,request
"Congratulations on your achievement! You worked incredibly hard to reach this milestone. Your dedication and perseverance have truly paid off. This success is well-deserved and long overdue. Let's celebrate this wonderful accomplishment together!",joy,celebratory,English,celebration
"नमस्ते, आप कैसे हैं? मुझे आशा है कि आपकी सुबह अच्छी बीत रही है। इतने लंबे समय बाद आपसे मिलकर बहुत खुशी हुई। आपका परिवार कैसा है? मैं कल ही आपके बारे में सोच रहा था।",neutral,conversational,Hindi,greeting
"मैं इस अवसर के लिए बहुत उत्साहित हूँ! यह वो सुनहरा मौका हो सकता है जिसका मैं सारी जिंदगी इंतजार कर रहा था। मैं अपने उत्साह को संभाल नहीं पा रहा हूँ। मुझ पर भरोसा करने के लिए धन्यवाद। मैं आपको निराश नहीं होने दूंगा!",joy,enthusiastic,Hindi,excitement
"कृपया सड़क पार करते समय सावधान रहें। यहाँ भीड़ के समय ट्रैफिक काफी ज्यादा रहता है। सड़क पर कदम रखने से पहले दोनों तरफ देख लें। मैंने हाल ही में इस चौराहे पर कई दुर्घटनाएं देखी हैं। आपकी सुरक्षा मेरे लिए सबसे महत्वपूर्ण है।",concern,cautionary,Hindi,warning
"आपकी सहायता के लिए बहुत-बहुत धन्यवाद। आपके सहयोग के बिना मैं नहीं जानता कि क्या करता। आपने आज मेरी बहुत मदद की है। आपकी दयालुता ने मेरे दिल को छू लिया है। मैं बहुत भाग्यशाली हूँ कि आप जैसा व्यक्ति मेरे जीवन में है।",gratitude,warm,Hindi,appreciation
"मैं सेवा से वास्तव में निराश हूँ। पिछले कुछ महीनों में गुणवत्ता में काफी गिरावट आई है। प्रीमियम कीमत चुकाने के बाद भी मेरी अपेक्षाएं पूरी नहीं हुईं। यह वो मानक नहीं है जिसका मुझसे वादा किया गया था। मुझे उम्मीद है कि आप इन समस्याओं का जल्द समाधान करेंगे।",disappointment,formal_complaint,Hindi,complaint
"एक समय की बात है, एक बहादुर छोटा चूहा था। वह पुराने बरगद के पेड़ के नीचे एक आरामदायक बिल में रहता था। हर दिन वह जादुई जंगल की खोज में निकलता था। दूसरे जानवर उसकी हिम्मत और दृढ़ता की प्रशंसा करते थे। उन्हें नहीं पता था कि उसका सबसे बड़ा रोमांच अभी बाकी था।",curiosity,storytelling,Hindi,narration
"बैठक कल दोपहर 3 बजे निर्धारित है। कृपया अपने साथ सभी आवश्यक दस्तावेज लेकर आएं। हम तिमाही रिपोर्ट और भविष्य की योजनाओं पर चर्चा करेंगे। कॉन्फ्रेंस रूम दो घंटे के लिए बुक किया गया है। ब्रेक के दौरान हल्का नाश्ता प्रदान किया जाएगा।",neutral,informative,Hindi,announcement
"मुझे अपने परिवार के साथ समय बिताना अच्छा लगता है। ये कीमती पल ऐसी यादें बनाते हैं जो हमेशा के लिए रह जाती हैं। अपने बच्चों को बड़े होते और सीखते देखना मेरे दिल को खुशी से भर देता है। हर हंसी, हर गले मिलना, हर साझा किया गया भोजन एक खजाना है। इन रिश्तों से ज्यादा महत्वपूर्ण कुछ भी नहीं है।",affection,tender,Hindi,personal
"क्या आप कृपया इस समस्या में मेरी मदद कर सकते हैं? मैं काफी समय से इससे जूझ रहा हूँ। इस क्षेत्र में आपकी विशेषज्ञता मेरे लिए बहुत मूल्यवान होगी। आप जो भी मार्गदर्शन दे सकें, उसकी मैं सराहना करूंगा। मेरे अनुरोध पर विचार करने के लिए समय देने हेतु धन्यवाद।",neutral,polite_request,Hindi,request
"आपकी उपलब्धि के लिए बधाई हो! आपने इस मुकाम तक पहुंचने के लिए कड़ी मेहनत की है। आपकी लगन और दृढ़ता सच में रंग लाई है। यह सफलता बिल्कुल उचित है और बहुत समय से प्रतीक्षित थी। आइए मिलकर इस शानदार उपलब्धि का जश्न मनाएं!",joy,celebratory,Hindi,celebration
"ನಮಸ್ಕಾರ, ನೀವು ಹೇಗಿದ್ದೀರಿ? ನಿಮ್ಮ ಬೆಳಿಗ್ಗೆ ಚೆನ್ನಾಗಿ ಕಳೆಯುತ್ತಿದೆ ಎಂದು ಭಾವಿಸುತ್ತೇನೆ. ಇಷ್ಟು ದಿನಗಳ ನಂತರ ನಿಮ್ಮನ್ನು ನೋಡಿ ತುಂಬಾ ಸಂತೋಷವಾಯಿತು. ನಿಮ್ಮ ಕುಟುಂಬ ಹೇಗಿದೆ? ನಿನ್ನೆ ನಿಮ್ಮ ಬಗ್ಗೆ ಯೋಚಿಸುತ್ತಿದ್ದೆ.",neutral,conversational,Kannada,greeting
"ಈ ಅವಕಾಶಕ್ಕಾಗಿ ನಾನು ತುಂಬಾ ಉತ್ಸಾಹದಿಂದಿದ್ದೇನೆ! ಇದು ನನ್ನ ಇಡೀ ವೃತ್ತಿಜೀವನದಲ್ಲಿ ಕಾದಿದ್ದ ಆ ಚಿನ್ನದ ಅವಕಾಶವಾಗಿರಬಹುದು. ನನ್ನ ಉತ್ಸಾಹವನ್ನು ನಾನು ನಿಯಂತ್ರಿಸಲಾಗುತ್ತಿಲ್ಲ. ನನ್ನ ಮೇಲೆ ನಂಬಿಕೆ ಇಟ್ಟು ಈ ಅವಕಾಶ ನೀಡಿದ್ದಕ್ಕಾಗಿ ಧನ್ಯವಾದಗಳು. ನಾನು ನಿಮ್ಮನ್ನು ನಿರಾಶೆಗೊಳಿಸುವುದಿಲ್ಲ!",joy,enthusiastic,Kannada,excitement
"ದಯವಿಟ್ಟು ರಸ್ತೆ ದಾಟುವಾಗ ಜಾಗರೂಕರಾಗಿರಿ. ಇಲ್ಲಿ ಗಡಿಯಾರದ ಸಮಯದಲ್ಲಿ ಸಂಚಾರ ತುಂಬಾ ಹೆಚ್ಚಿರುತ್ತದೆ. ರಸ್ತೆಯ ಮೇಲೆ ಕಾಲಿಡುವ ಮೊದಲು ಎರಡೂ ಕಡೆ ನೋಡಿ. ಇತ್ತೀಚೆಗೆ ಈ ಚೌಕದಲ್ಲಿ ಹಲವಾರು ಅಪಘಾತಗಳನ್ನು ನೋಡಿದ್ದೇನೆ. ನಿಮ್ಮ ಸುರಕ್ಷತೆಯೇ ನನಗೆ ಅತ್ಯಂತ ಮುಖ್ಯ.",concern,cautionary,Kannada,warning
"ನಿಮ್ಮ ಸಹಾಯಕ್ಕಾಗಿ ತುಂಬಾ ಧನ್ಯವಾದಗಳು. ನಿಮ್ಮ ಬೆಂಬಲವಿಲ್ಲದಿದ್ದರೆ ನಾನು ಏನು ಮಾಡುತ್ತಿದ್ದೆ ಗೊತ್ತಿಲ್ಲ. ಇಂದು ನೀವು ನನಗೆ ಅತ್ಯಧಿಕ ಸಹಾಯ ಮಾಡಿದ್ದೀರಿ. ನಿಮ್ಮ ದಯೆ ನನ್ನ ಹೃದಯವನ್ನು ಸ್ಪರ್ಶಿಸಿದೆ. ನಿಮ್ಮಂತಹ ವ್ಯಕ್ತಿ ನನ್ನ ಜೀವನದಲ್ಲಿದ್ದಾರೆ ಎಂಬುದು ನನ್ನ ಅದೃಷ್ಟ.",gratitude,warm,Kannada,appreciation
"ನಾನು ಸೇವೆಯಿಂದ ನಿಜವಾಗಿಯೂ ನಿರಾಶೆಗೊಂಡಿದ್ದೇನೆ. ಕಳೆದ ಕೆಲವು ತಿಂಗಳುಗಳಲ್ಲಿ ಗುಣಮಟ್ಟದಲ್ಲಿ ಗಣನೀಯ ಇಳಿಕೆ ಕಂಡುಬಂದಿದೆ. ಪ್ರೀಮಿಯಂ ಬೆಲೆ ಕೊಟ್ಟರೂ ನನ್ನ ನಿರೀಕ್ಷೆಗಳು ಪೂರೈಸಲ್ಪಟ್ಟಿಲ್ಲ. ಇದು ಆರಂಭದಲ್ಲಿ ಭರವಸೆ ನೀಡಿದ ಗುಣಮಟ್ಟವಲ್ಲ. ಈ ಸಮಸ್ಯೆಗಳನ್ನು ತ್ವರಿತವಾಗಿ ಪರಿಹರಿಸಬೇಕೆಂದು ಭಾವಿಸುತ್ತೇನೆ.",disappointment,formal_complaint,Kannada,complaint
"ಒಂದಾನೊಂದು ಕಾಲದಲ್ಲಿ ಒಂದು ಧೈರ್ಯಶಾಲಿ ಚಿಕ್ಕ ಇಲಿ ಇತ್ತು. ಅದು ಹಳೆಯ ಅರಳಿ ಮರದ ಕೆಳಗೆ ಆರಾಮದಾಯಕ ಗುಂಡಿಯೊಂದರಲ್ಲಿ ವಾಸಿಸುತ್ತಿತ್ತು. ಪ್ರತಿದಿನ ಅದು ಮಾಂತ್ರಿಕ ಕಾಡನ್ನು ಅನ್ವೇಷಿಸಲು ಹೊರಡುತ್ತಿತ್ತು. ಇತರ ಪ್ರಾಣಿಗಳು ಅದರ ಧೈರ್ಯ ಮತ್ತು ನಿರ್ಧಾರಗಳನ್ನು ಮೆಚ್ಚುತ್ತಿದ್ದವು. ಅದರ ಅತಿ ದೊಡ್ಡ ಸಾಹಸ ಇನ್ನೂ ಬರಬೇಕಿದೆ ಎಂಬುದು ಅವುಗಳಿಗೆ ತಿಳಿದಿರಲಿಲ್ಲ.",curiosity,storytelling,Kannada,narration
"ಸಭೆಯು ನಾಳೆ ಮಧ್ಯಾಹ್ನ 3 ಗಂಟೆಗೆ ನಿಗದಿಪಡಿಸಲಾಗಿದೆ. ದಯವಿಟ್ಟು ಅಗತ್ಯವಿರುವ ಎಲ್ಲಾ ದಾಖಲೆಗಳನ್ನು ತರಲು ಮರೆಯಬೇಡಿ. ನಾವು ತ್ರೈಮಾಸಿಕ ವರದಿಗಳು ಮತ್ತು ಭವಿಷ್ಯದ ಯೋಜನೆಗಳ ಬಗ್ಗೆ ಚರ್ಚಿಸುವೆವು. ಸಮ್ಮೇಳನ ಕೊಠಡಿಯನ್ನು ಎರಡು ಗಂಟೆಗಳ ಕಾಲ ಕಾಯ್ದಿರಿಸಲಾಗಿದೆ. ವಿರಾಮದ ಸಮಯದಲ್ಲಿ ಲಘು ಉಪಾಹಾರ ಒದಗಿಸಲಾಗುವುದು.",neutral,informative,Kannada,announcement
"ನನ್ನ ಕುಟುಂಬದೊಂದಿಗೆ ಸಮಯ ಕಳೆಯಲು ನಾನು ಇಷ್ಟಪಡುತ್ತೇನೆ. ಈ ಅಮೂಲ್ಯ ಕ್ಷಣಗಳು ಶಾಶ್ವತವಾಗಿ ಉಳಿಯುವ ನೆನಪುಗಳನ್ನು ಸೃಷ್ಟಿಸುತ್ತವೆ. ನನ್ನ ಮಕ್ಕಳು ಬೆಳೆಯುವುದನ್ನು ಮತ್ತು ಕಲಿಯುವುದನ್ನು ನೋಡುವುದು ನನ್ನ ಹೃದಯವನ್ನು ಸಂತೋಷದಿಂದ ತುಂಬುತ್ತದೆ. ಪ್ರತಿಯೊಂದು ನಗು, ಪ್ರತಿಯೊಂದು ಅಪ್ಪುಗೆ, ಪ್ರತಿಯೊಂದು ಹಂಚಿಕೊಂಡ ಊಟವೂ ಒಂದು ನಿಧಿ. ಈ ಬಂಧಗಳಿಗಿಂತ ಮುಖ್ಯವಾದದ್ದು ಏನೂ ಇಲ್ಲ.",affection,tender,Kannada,personal
"ದಯವಿಟ್ಟು ಈ ಸಮಸ್ಯೆಯಲ್ಲಿ ನನಗೆ ಸಹಾಯ ಮಾಡಬಹುದೇ? ಇದರೊಂದಿಗೆ ಕಾಲಕಾಲಕ್ಕೆ ಹೋರಾಡುತ್ತಿದ್ದೇನೆ. ಈ ಕ್ಷೇತ್ರದಲ್ಲಿ ನಿಮ್ಮ ಪರಿಣತಿ ನನಗೆ ಅತ್ಯಮೂಲ್ಯವಾಗಿದೆ. ನೀವು ನೀಡಬಹುದಾದ ಯಾವುದೇ ಮಾರ್ಗದರ್ಶನವನ್ನು ನಾನು ಪ್ರಶಂಸಿಸುತ್ತೇನೆ. ನನ್ನ ವಿನಂತಿಯನ್ನು ಪರಿಗಣಿಸಲು ಸಮಯ ಕೊಟ್ಟಿದ್ದಕ್ಕಾಗಿ ಧನ್ಯವಾದಗಳು.",neutral,polite_request,Kannada,request
"ನಿಮ್ಮ ಸಾಧನೆಗೆ ಅಭಿನಂದನೆಗಳು! ಈ ಮೈಲುಗಲ್ಲನ್ನು ತಲುಪಲು ನೀವು ಅಪಾರ ಪರಿಶ್ರಮ ಪಟ್ಟಿದ್ದೀರಿ. ನಿಮ್ಮ ಸಮರ್ಪಣೆ ಮತ್ತು ತಾಳ್ಮೆ ನಿಜವಾಗಿಯೂ ಫಲ ನೀಡಿದೆ. ಈ ಯಶಸ್ಸು ಸಂಪೂರ್ಣವಾಗಿ ಅರ್ಹವಾದದ್ದು ಮತ್ತು ಬಹುಕಾಲದಿಂದ ಪ್ರತೀಕ್ಷಿತವಾದದ್ದು. ಈ ಅದ್ಭುತ ಸಾಧನೆಯನ್ನು ಒಟ್ಟಿಗೆ ಆಚರಿಸೋಣ!",joy,celebratory,Kannada,celebration
"Emergency! Call the ambulance immediately! Someone has been seriously injured in an accident. Every second counts right now. We need medical assistance as fast as possible. Please stay calm and follow the emergency procedures.",urgency,emergency,English,emergency
"The weather is beautiful today, isn't it? The sun is shining so brightly and there's a gentle breeze. It's the perfect day to spend some time outdoors. I love how the fresh air makes everything feel so refreshing. Days like this remind me why I enjoy living here so much.",contentment,casual,English,small_talk
"I apologize for the inconvenience caused. This was not the experience we wanted you to have. We take full responsibility for what happened today. Our team is working hard to prevent such issues in the future. Your patience and understanding mean a lot to us.",regret,formal_apology,English,apology
"Let me explain this step by step. First, we need to understand the basic concepts involved. Then we'll move on to the practical applications. Each stage builds upon the previous one logically. By the end, you'll have a complete understanding of the entire process.",neutral,instructional,English,tutorial
"What a wonderful surprise this is! I never expected something this amazing to happen today. You've truly made my day with this gesture. The thoughtfulness behind this means so much to me. I'm genuinely touched by your kindness and generosity.",surprise,delighted,English,surprise
"आपातकाल! तुरंत एम्बुलेंस बुलाएं! किसी को दुर्घटना में गंभीर चोटें आई हैं। हर सेकंड महत्वपूर्ण है अभी। हमें जितनी जल्दी हो सके चिकित्सा सहायता चाहिए। कृपया शांत रहें और आपातकालीन प्रक्रियाओं का पालन करें।",urgency,emergency,Hindi,emergency
"आज मौसम कितना सुंदर है, है ना? धूप इतनी चमकदार है और हल्की हवा चल रही है। बाहर समय बिताने के लिए यह एकदम सही दिन है। मुझे पसंद है कि ताज़ी हवा कैसे सब कुछ इतना स्फूर्तिदायक बनाती है। ऐसे दिन मुझे याद दिलाते हैं कि मैं यहाँ रहना क्यों पसंद करता हूँ।",contentment,casual,Hindi,small_talk
"हुई असुविधा के लिए मैं माफी चाहता हूं। यह वो अनुभव नहीं था जो हम आपको देना चाहते थे। आज जो हुआ उसकी पूरी जिम्मेदारी हम लेते हैं। हमारी टीम भविष्य में ऐसी समस्याओं को रोकने के लिए कड़ी मेहनत कर रही है। आपका धैर्य और समझदारी हमारे लिए बहुत मायने रखती है।",regret,formal_apology,Hindi,apology
"मुझे इसे कदम दर कदम समझाने दीजिए। पहले, हमें इसमें शामिल बुनियादी अवधारणाओं को समझना होगा। फिर हम व्यावहारिक अनुप्रयोगों पर आगे बढ़ेंगे। हर चरण तार्किक रूप से पिछले वाले पर आधारित है। अंत तक, आपको पूरी प्रक्रिया की संपूर्ण समझ हो जाएगी।",neutral,instructional,Hindi,tutorial
"यह कितना अद्भुत आश्चर्य है! मैंने कभी उम्मीद नहीं की थी कि आज कुछ इतना शानदार होगा। आपने इस इशारे से सच में मेरा दिन बना दिया है। इसके पीछे की सोच मेरे लिए बहुत मायने रखती है। आपकी दयालुता और उदारता से मैं वास्तव में प्रभावित हूँ।",surprise,delighted,Hindi,surprise
"ತುರ್ತು! ತಕ್ಷಣ ಆಂಬುಲೆನ್ಸ್ ಅನ್ನು ಕರೆ ಮಾಡಿ! ಅಪಘಾತದಲ್ಲಿ ಯಾರೋ ಗಂಭೀರವಾಗಿ ಗಾಯಗೊಂಡಿದ್ದಾರೆ. ಪ್ರತಿ ಸೆಕೆಂಡು ಈಗ ಮುಖ್ಯವಾಗಿದೆ. ನಮಗೆ ಸಾಧ್ಯವಾದಷ್ಟು ವೇಗವಾಗಿ ವೈದ್ಯಕೀಯ ಸಹಾಯ ಬೇಕು. ದಯವಿಟ್ಟು ಶಾಂತವಾಗಿರಿ ಮತ್ತು ತುರ್ತು ಪ್ರಕ್ರಿಯೆಗಳನ್ನು ಅನುಸರಿಸಿ.",urgency,emergency,Kannada,emergency
"ಇಂದು ಹವಾಮಾನ ಎಷ್ಟು ಸುಂದರವಾಗಿದೆ, ಅಲ್ಲವೇ? ಸೂರ್ಯನು ತುಂಬಾ ಪ್ರಕಾಶಮಾನವಾಗಿ ಬೆಳಗುತ್ತಿದ್ದಾನೆ ಮತ್ತು ಮೃದುವಾದ ಗಾಳಿ ಬೀಸುತ್ತಿದೆ. ಹೊರಗೆ ಸಮಯ ಕಳೆಯಲು ಇದು ಪರಿಪೂರ್ಣ ದಿನ. ತಾಜಾ ಗಾಳಿ ಎಲ್ಲವನ್ನೂ ಎಷ್ಟು ಸ್ಫೂರ್ತಿದಾಯಕವಾಗಿ ಮಾಡುತ್ತದೆ ಎಂಬುದು ನನಗೆ ಇಷ್ಟ. ಇಂತಹ ದಿನಗಳು ನಾನು ಇಲ್ಲಿ ವಾಸಿಸಲು ಏಕೆ ಇಷ್ಟಪಡುತ್ತೇನೆ ಎಂಬುದನ್ನು ನೆನಪಿಸುತ್ತವೆ.",contentment,casual,Kannada,small_talk
"ಉಂಟಾದ ಅನಾನುಕೂಲತೆಗಾಗಿ ನಾನು ಕ್ಷಮೆ ಕೇಳುತ್ತೇನೆ. ನಾವು ನಿಮಗೆ ನೀಡಲು ಬಯಸಿದ ಅನುಭವ ಇದಲ್ಲ. ಇಂದು ಆದದ್ದರ ಸಂಪೂರ್ಣ ಜವಾಬ್ದಾರಿಯನ್ನು ನಾವು ತೆಗೆದುಕೊಳ್ಳುತ್ತೇವೆ. ಭವಿಷ್ಯದಲ್ಲಿ ಇಂತಹ ಸಮಸ್ಯೆಗಳನ್ನು ತಡೆಯಲು ನಮ್ಮ ತಂಡ ಕಷ್ಟಪಟ್ಟು ಕೆಲಸ ಮಾಡುತ್ತಿದೆ. ನಿಮ್ಮ ತಾಳ್ಮೆ ಮತ್ತು ತಿಳುವಳಿಕೆ ನಮಗೆ ತುಂಬಾ ಮುಖ್ಯ.",regret,formal_apology,Kannada,apology
"ಇದನ್ನು ಹಂತ ಹಂತವಾಗಿ ವಿವರಿಸಲು ನನಗೆ ಅನುಮತಿಸಿ. ಮೊದಲು, ನಾವು ಇದರಲ್ಲಿ ಒಳಗೊಂಡಿರುವ ಮೂಲಭೂತ ಪರಿಕಲ್ಪನೆಗಳನ್ನು ಅರ್ಥಮಾಡಿಕೊಳ್ಳಬೇಕು. ನಂತರ ನಾವು ಪ್ರಾಯೋಗಿಕ ಅನ್ವಯಗಳಿಗೆ ಮುಂದುವರಿಯುತ್ತೇವೆ. ಪ್ರತಿ ಹಂತವು ತಾರ್ಕಿಕವಾಗಿ ಹಿಂದಿನದರ ಮೇಲೆ ನಿರ್ಮಿಸುತ್ತದೆ. ಕೊನೆಯಲ್ಲಿ, ನಿಮಗೆ ಸಂಪೂರ್ಣ ಪ್ರಕ್ರಿಯೆಯ ಸಂಪೂರ್ಣ ತಿಳುವಳಿಕೆ ಇರುತ್ತದೆ.",neutral,instructional,Kannada,tutorial
"ಇದು ಎಂತಹ ಅದ್ಭುತವಾದ ಆಶ್ಚರ್ಯ! ಇಂದು ಇಷ್ಟು ಅದ್ಭುತವಾದ ಏನಾದರೂ ನಡೆಯುತ್ತದೆ ಎಂದು ನಾನು ಎಂದೂ ನಿರೀಕ್ಷಿಸಿರಲಿಲ್ಲ. ಈ ಸೂಚನೆಯಿಂದ ನೀವು ನಿಜವಾಗಿಯೂ ನನ್ನ ದಿನವನ್ನು ಮಾಡಿದ್ದೀರಿ. ಇದರ ಹಿಂದಿನ ಚಿಂತನೆಯು ನನಗೆ ತುಂಬಾ ಅರ್ಥಪೂರ್ಣವಾಗಿದೆ. ನಿಮ್ಮ ದಯೆ ಮತ್ತು ಉದಾರತೆಯಿಂದ ನಾನು ನಿಜವಾಗಿಯೂ ಸ್ಪರ್ಶಿಸಲ್ಪಟ್ಟಿದ್ದೇನೆ.",surprise,delighted,Kannada,surprise
```

## Evaluation Criteria

### Emotions Covered:
- **Neutral**: Baseline emotional state
- **Joy**: Happiness, excitement, celebration
- **Concern**: Worry, caution
- **Gratitude**: Thankfulness, appreciation
- **Disappointment**: Dissatisfaction, complaint
- **Curiosity**: Wonder, storytelling
- **Affection**: Love, tenderness
- **Urgency**: Emergency, immediate action needed
- **Contentment**: Satisfaction, casual happiness
- **Regret**: Apology, remorse
- **Surprise**: Amazement, delight

### Tones Covered:
- **Conversational**: Natural, everyday speech
- **Enthusiastic**: High energy, excited
- **Cautionary**: Warning, careful
- **Warm**: Friendly, appreciative
- **Formal_complaint**: Professional dissatisfaction
- **Storytelling**: Narrative, engaging
- **Informative**: Factual, announcement
- **Tender**: Soft, loving
- **Polite_request**: Courteous asking
- **Celebratory**: Congratulatory, festive
- **Emergency**: Urgent, immediate
- **Casual**: Relaxed, informal
- **Formal_apology**: Professional regret
- **Instructional**: Teaching, explaining
- **Delighted**: Pleasant surprise

### Use Cases Covered:
- Greetings and social interactions
- Expressions of emotion
- Warnings and safety messages
- Appreciation and gratitude
- Complaints and feedback
- Storytelling and narration
- Announcements and information
- Personal expressions
- Requests and questions
- Celebrations and congratulations
- Emergency situations
- Small talk and casual conversation
- Apologies
- Instructions and tutorials
- Expressions of surprise

## Testing Recommendations:

1. **Prosody**: Listen for appropriate rhythm, stress, and intonation
2. **Emotion**: Assess if the synthetic voice conveys the intended emotion
3. **Naturalness**: Evaluate how human-like the speech sounds
4. **Clarity**: Check pronunciation accuracy, especially for complex words
5. **Language-specific features**: 
   - English: Stress patterns, linking sounds
   - Hindi: Aspirated consonants, vowel length
   - Kannada: Retroflex sounds, gemination
6. **Tone variation**: Ensure different tones are distinguishable
7. **Code-switching**: Test with mixed language sentences if needed