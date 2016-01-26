% führungsübertragungsfunktion
num=[1.39e-5 1.11e-5 2.22e-6];
den=[1 1.354e-1 4.602e-2 1.935e-3 2.529e-4 1.333e-6];
G=tf(num,den); 


Tu = 16;
Ta = 218;
Ks = 1.67;
Kp = 1.2 * Ta / (Ks*Tu);
Ki = 0.1;
Kd = 0.1;
Tf = 0;

figure(3);
step(G);

s = tf('s');
K = Kp + Ki / s + ( Kd * s) / (Tf * s + 1 );
G_w = (K * G) / ( 1 + K * G);
