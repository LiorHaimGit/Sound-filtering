function filtered_data = low_pass_filter(data, sample_rate, cutoff_freq, order)

nyquist_freq = sample_rate / 2; % Nyquist frequency

% Design the Butterworth bandpass filter
[b, a] = butter(order, cutoff_freq / nyquist_freq, 'low');

% Apply the filter to the audio data
filtered_data = filter(b, a, data);
