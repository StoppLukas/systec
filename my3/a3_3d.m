m = 80;
g = 9.81;
p = 1.2;
cw = 1.3;
A = 0.5;
h0 = 3000;

ve = sqrt(2*m*g/cw*p*A);
vt = [];

for t=1:1:60
    t
    vt(t) = ve * tanh(g/ve * t);
end

plot(vt)