C = 1;
R = 0.5;

b = 1;
a = [C^2*R^2 3*C*R 1];

% Calculation manually
% ====================
w = linspace(0, 2*pi);	% vector of angular frequencies
% Evaluate transfer function and take the amplitude
g = polyval(b, exp(i*w)) ./ polyval(a, exp(i*w));

% Calculation using freqz function
% ================================
[g_2,w_2] = freqz(b, a, 'whole');

figure
plot(w/pi, 20*log10(abs(g)))
%plot(w/pi, 20*log10(angle(g)))
hold on
plot(w_2/pi, 20*log10(abs(g_2)), '--r')
xlabel('Frequency response (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
title('Frequency response');
