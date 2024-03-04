% Compute the FFT of the audio data
num_of_samples = sample_time_sec*sample_rate;
audio_data_for_fft = filtered_audio_data(1:num_of_samples);
fft_data = fft(audio_data_for_fft);
