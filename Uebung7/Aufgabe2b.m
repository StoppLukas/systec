%Aufgabe 7.2b
% führungsübertragungsfunktion
num=[1.39e-5 1.11e-5 2.22e-6];
den=[1 1.354e-1 4.602e-2 1.935e-3 2.529e-4 1.333e-6];
G=tf(num,den);

j = 1;

for i = 0.5:0.5:3
    Gw = G*i / (1+G*i);
    figure(j)
    step(Gw);
    j = j+1;
end
