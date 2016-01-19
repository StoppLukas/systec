sys=tf([0.2],[0.2 1]);

figure(1);
step(sys);

figure(2);
bode(sys);

figure(3);
nyquist(sys);

figure(4);
impulse(sys);

figure(5);
%1200period, 1300duration, sampling10
[a,b] = gensig('square',1200,1300,10);
lsim(sys,a * 0.2,b)

dcgain(sys)