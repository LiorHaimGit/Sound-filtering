clc
close all
clear all
addpath('functions');
% Load the signal processing package
pkg load signal

% Specify the path to the MP3 file
file_name = 'Crowd.wav';

% Read the audio data from the MP3 file
[audio_data, sample_rate] = audioread(file_name);

perform_fft
plot_fft

% Apply the filter to the audio data
filtered_audio_data = band_pass_filter(audio_data, sample_rate, 500,800,4);
perform_fft_for_filtered_data
plot_fft
legend(
'Original data',
'Band-pass filterd 500-800 Hz')

% Save filtered_data
##output_file = ['band_500_800_', file_name] ;
##audiowrite(output_file, filtered_audio_data, sample_rate);

% Apply the filter to the audio data
filtered_audio_data = band_pass_filter(audio_data, sample_rate, 1650,1800,4);
perform_fft_for_filtered_data
plot_fft

% Save filtered_data
##output_file = ['band_1650_1800_', file_name] ;
##audiowrite(output_file, filtered_audio_data, sample_rate);

% Apply the filter to the audio data
filtered_audio_data = band_pass_filter(audio_data, sample_rate, 2000,2300,4);
perform_fft_for_filtered_data
plot_fft

% Save filtered_data
##output_file = ['band_2000_800_', file_name] ;
##audiowrite(output_file, filtered_audio_data, sample_rate);

% Apply the filter to the audio data
filtered_audio_data = band_pass_filter(audio_data, sample_rate, 3000,3700,4);
perform_fft_for_filtered_data
plot_fft

legend(
'Original data',
'Band-pass filterd 500-800 Hz',
'Band-pass filterd 1650-1800 Hz',
'Band-pass filterd 2000-2300 Hz',
'Band-pass filterd 3000-3700 Hz')

% Save filtered_data
##output_file = ['band_3000_3700_', file_name] ;
##audiowrite(output_file, filtered_audio_data, sample_rate);


% Apply the filter to the audio data
filtered_audio_data = low_pass_filter(audio_data, sample_rate, 600,4);
perform_fft_for_filtered_data
plot_fft

% Save filtered_data
##output_file = ['low_600_', file_name] ;
##audiowrite(output_file, filtered_audio_data, sample_rate);

% Apply the filter to the audio data
filtered_audio_data = high_pass_filter(audio_data, sample_rate, 2000,4);
perform_fft_for_filtered_data
plot_fft

% Save filtered_data
##output_file = ['high_2000_', file_name] ;
##audiowrite(output_file, filtered_audio_data, sample_rate);

legend(
'Original data',
'Low-pass filterd 600 Hz',
'High-pass filterd 2000 Hz')




