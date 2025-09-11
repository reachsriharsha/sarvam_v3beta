from sarvamai import SarvamAI
from sarvamai.play import save
client = SarvamAI(api_subscription_key="sk_snidntnc_OBt6Nqf2TTn8OE9dTvYnMQIk")
# Convert text to speech
audio = client.text_to_speech.convert(
  target_language_code="en-IN",
  #text="Hi there! This is Praveen from Expressbee. Would you like to track your shipment? Please tell me your tracking ID",
  text="Hello! How are you today?",
  model="bulbul:v3-beta",
  enable_preprocessing=True,
  speaker="sakshi", # sakshi, harsh, aditya, chirag, ritu
  speech_sample_rate=16000,
)
save(audio, "output2.wav")