C = 1;
R = 0.5;

wmin = 0.001;
wmax = 1000;

b = 1;
a = [C^2*R^2 3*C*R 1];

% Manual calculation
% ==================
w = logspace(log10(wmin), log10(wmax));
H = polyval(b, i*w) ./ polyval(a, i*w);
mag = abs(H);
phase = angle(H);

figure
subplot(2, 1, 1)
semilogx(w/(2*pi), 20*log10(mag))
title('Bode diagram (manual)');
ylabel('Magnitude (dB)');
subplot(2, 1, 2)
semilogx(w/(2*pi), phase)
xlabel('Frequency (rad/s)'), ylabel('Phase (deg)');

% Calculation using the bode function
% ===================================
H_2 = tf(b, a);
figure
bode(H_2, w)
