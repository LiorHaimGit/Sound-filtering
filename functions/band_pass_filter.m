function filtered_data = band_pass_filter(data, sample_rate, cutoff_freq_low, cutoff_freq_high, order)

nyquist_freq = sample_rate / 2; % Nyquist frequency

% Design the Butterworth bandpass filter
[b, a] = butter(order, [cutoff_freq_low, cutoff_freq_high] / nyquist_freq, 'bandpass');

% Apply the filter to the audio data
filtered_data = filter(b, a, data);
