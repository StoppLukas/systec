hold off

num = [10];
den = [1 2 10];
T = tf(num,den);
step(T)

figure

num = [-1 0];
den = [1 2 10];
Z = tf(num,den);
impulse(Z)

figure

num = [-10];
den = [1 2 10];
[u,t] = gensig('sin', 0.02, 0.5, 0.0001);
t = t * 10;
U = tf(num,den);
lsim(U,u,t)

figure

bode(T)
hold on
bode(Z)
hold off

num = [10];
den = [1 2 0 10];
T = tf(num,den);
step(T)