% Plot the FFT magnitude spectrum
figure(1)
plot(frequency_axis, abs(fft_data));
hold on
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT Magnitude Spectrum');
xlim([0 6000])
