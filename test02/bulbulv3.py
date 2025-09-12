
import argparse
import os
from dotenv import load_dotenv
from sarvamai import SarvamAI
from sarvamai.play import save

# Load environment variables from .env file
load_dotenv()

'''
en-IN: English
hi-IN: Hindi
kn-IN: Kannada
'''
def main():
  parser = argparse.ArgumentParser(description="Text to Speech using SarvamAI")
  parser.add_argument('--output', type=str, required=True, help='Output audio file name')
  parser.add_argument('--language', type=str, default='en-IN', 
                      help='Target language code (en-IN, hi-IN, kn-IN)')
  parser.add_argument('--speaker', type=str, default='sakshi',
                      help='Speaker voice (sakshi, harsh, chirag, ritu, aditya, isha, priya, neha, rahul, pooja, rohan, simran, kavya, anjali, sneha, kiran, vikram, rajesh, sunit)')
  parser.add_argument('--text', type=str, required=True,
                      help='Text to convert to speech')
  args = parser.parse_args()

  # Get API key from environment variable
  api_key = os.getenv('SARVAM_API_KEY')
  if not api_key:
    raise ValueError("SARVAM_API_KEY environment variable not found. Please set it in your .env file.")

  client = SarvamAI(api_subscription_key=api_key)
  audio = client.text_to_speech.convert(
    target_language_code=args.language,
    text=args.text,
    model="bulbul:v3-beta",
    enable_preprocessing=True,
    speaker=args.speaker,
    speech_sample_rate=16000,
  )
  save(audio, args.output)

if __name__ == "__main__":
  main()