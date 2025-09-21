# Bulbul V3 Streaming Test
import asyncio
import base64
from sarvamai import AsyncSarvamAI, AudioOutput
import websockets
import argparse

import os
from dotenv import load_dotenv
from datetime import datetime
# Load environment variables from .env file
load_dotenv()

async def tts_stream(language_code, speaker, text, output_file):

    
    # Get API key from environment variable
    api_key = os.getenv('SARVAM_API_KEY')
    if not api_key:
      raise ValueError("SARVAM_API_KEY environment variable not found. Please set it in your .env file.")

    client = AsyncSarvamAI(api_subscription_key=api_key)

    async with client.text_to_speech_streaming.connect(model="bulbul:v3-beta") as ws:

        s_time = datetime.now()
        await ws.configure(target_language_code=language_code, speaker=speaker)
        print("Sent configuration")
        conf_etime = datetime.now()
        print(f"Configuration time: {conf_etime - s_time}")
        long_text = text


        await ws.convert(long_text)
        print("Sent text message")
        text_etime = datetime.now()
        print(f"Text send time: {text_etime - conf_etime}")

        await ws.flush()
        print("Flushed buffer")
        flush_etime = datetime.now()
        print(f"Flush time: {flush_etime - text_etime}")

        chunk_count = 0 
        with open(output_file, "wb") as f:
            async for message in ws:
                if isinstance(message, AudioOutput):
                    chunk_count += 1
                    audio_chunk = base64.b64decode(message.data.audio)
                    f.write(audio_chunk)
                    f.flush()
                #else:
                #    print(f"Received non-audio [completion] message: {message}")

        etime = datetime.now()

        print(f"All {chunk_count} chunks saved to {output_file}")
        print(f"Audio generation complete. Total time: {etime - s_time} seconds")


        if hasattr(ws, "_websocket") and not ws._websocket.closed:
            await ws._websocket.close()
            print("WebSocket connection closed.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Bulbul V3 Streaming TTS')
    parser.add_argument('--language', required=True, help='Target language code (e.g., hi-IN)')
    parser.add_argument('--speaker', required=True, help='Speaker name (e.g., sakshi)')
    parser.add_argument('--text', required=True, help='Text to convert to speech')
    parser.add_argument('--output', required=True, help='Output file path (e.g., output.mp3)')
    
    args = parser.parse_args()
    
    asyncio.run(tts_stream(args.language, args.speaker, args.text, args.output))

# --- Notebook/Colab usage ---
# await tts_stream(language_code, speaker, text, output_file)
