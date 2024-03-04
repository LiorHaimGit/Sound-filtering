% Compute the FFT of the audio data
sample_time_sec = 0.5;
num_of_samples = sample_time_sec*sample_rate;
audio_data_for_fft = audio_data(1:num_of_samples);
fft_data = fft(audio_data_for_fft);

% Compute the frequency axis
n = length(audio_data_for_fft);
frequency_axis = (0:n-1) * (sample_rate / n);
