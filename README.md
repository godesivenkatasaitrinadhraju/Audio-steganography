# Audio-steganography
**Enhancing Audio Security Through LSB-Based Steganography**
**Project Overview**
This project implements Audio Steganography using the Least Significant Bit (LSB) technique to securely embed secret messages into audio files while maintaining minimal distortion. The primary objective is to enhance data security through steganographic methods using MATLAB.

**Features**
✅ LSB-Based Steganography – Hides data in the least significant bits of audio samples.
✅ MATLAB Implementation – Encryption and decryption algorithms for message hiding.
✅ Minimal Audio Distortion – Ensures imperceptibility of hidden data.
✅ Efficient Data Retrieval – Supports accurate extraction of embedded messages.
✅ Secure Information Hiding – Protects confidential communication.

**Technology Stack**
MATLAB – Used for audio processing and implementing steganographic algorithms.
LSB Bit Manipulation – Technique for embedding and extracting hidden data.
How It Works
Encoding (Hiding the Message)

**Convert text data into binary.**
Embed the binary bits into the least significant bits (LSB) of an audio file.
Save the modified audio file.
Decoding (Extracting the Message)

Read the modified audio file.
Extract the LSB bits to retrieve the hidden binary message.
Convert the binary data back to text.
Installation & Usage
1. Clone the Repository
bash
Copy
Edit
git clone https://github.com/your-username/audio-steganography-lsb.git
cd audio-steganography-lsb
2. Run the MATLAB Code
Encoding:
Place the text file (message to hide) and the audio file in the working directory.
Run the following MATLAB script:
matlab
Copy
Edit
encrypt_audio.m
The output will be a modified stego-audio file containing the hidden message.
Decoding:
Load the stego-audio file into MATLAB.
Run the following script to extract the hidden message:
matlab
Copy
Edit
decrypt_audio.m
The extracted text message will be displayed in the MATLAB console.
Example Usage
matlab
Copy
Edit
[audioData, sampleRate] = audioread('input.wav'); % Read audio file
message = 'Secret message'; % Message to hide
encodedAudio = encodeLSB(audioData, message); % Encode message
audiowrite('output.wav', encodedAudio, sampleRate); % Save modified audio
Results & Analysis
The system was tested on multiple audio files of different formats and bit rates.
Ensured imperceptibility and high accuracy in message retrieval.
Signal-to-noise ratio (SNR) analysis confirms minimal distortion.
Applications
🔹 Secure Communication – Hiding confidential data in audio files.
🔹 Digital Watermarking – Protecting ownership of digital content.
🔹 Covert Messaging – Concealed transmission of sensitive information.

**Contributors**
**Godesi Venkata Sai Trinadh Raju
Gundavarapu Durga Sivani
Singamsetti Swetha
Ayinaparthi Sahithi Supriya
Kshathri Bhanu Samyuktha**
**License**
This project is licensed under the MIT License.
