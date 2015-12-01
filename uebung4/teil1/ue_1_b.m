C = 1;
R = 0.5;

b = 1;
a = [C^2*R^2 3*C*R 1];

[g,w] = freqz(b, a, 'whole');

figure
plot(w/pi, 20*log10(abs(g)))
xlabel('Frequency response (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
title('Frequency response');
