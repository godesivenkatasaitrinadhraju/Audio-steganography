     
     clc;
     clear all;
     close all;
     numChars = 40;
    % Read the audio file
    [audioData, ~] = audioread('outputaudio.wav');
    
    % Convert the audio data to integer format
    audioInt = int16(audioData * 32767);
    
    % Extract the LSBs
    extractedBits = bitget(audioInt, 1);
    
    % Convert bits to characters
    numBits = numChars * 8;
    extractedBits = extractedBits(1:numBits);
    extractedBinary = reshape(extractedBits, 8, [])';
    extractedChars = char(bin2dec(num2str(extractedBinary)));
    
    % Convert the binary to a string
    extractedText = char(extractedChars)';
    
    disp('Text successfully extracted from the audio file.');
    disp(extractedText);