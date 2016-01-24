% führungsübertragungsfunktion
num=[1.39e-5 1.11e-5 2.22e-6];
den=[1 1.354e-1 4.602e-2 1.935e-3 2.529e-4 1.333e-6];
G=tf(num,den); 

Tv = 1;

s = tf('s');
K = Tv * s;

figure(1);
G_w = (K * G) / (1 + K * G);
step(G_w);

% PDT1-Regler
Tv = 0.1;
Tp = 0.01;
Kp = 1;

s = tf('s');
K = Kp * (Tv * s + 1) / (Tp * s +1);
G_w = (K * G) / (1 + K * G);

figure(2);
step(G_w);

