% führungsübertragungsfunktion
num=[1.39e-5 1.11e-5 2.22e-6];
den=[1 1.354e-1 4.602e-2 1.935e-3 2.529e-4 1.333e-6];
G=tf(num,den); 
figure(1);
step(G)

figure(2);
impulse(G)

% Pole
pol = pole(G);
nul = tzero(G);
figure(3);
pzmap(G)
pol;
nul;