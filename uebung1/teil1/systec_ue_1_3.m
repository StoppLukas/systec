x1_beginning = 45;
x1alt = x1_beginning;
x2alt = 0;
x1neu = 0;
x2neu = 0;

l = 10;
g = 9.80665;
tend = 20;
tstep = 0.01;

vec_x1neu = [];
vec_x2neu = [];
vec_t = 0:tstep:tend;

for t = 0:tstep:tend
    x1neu = x1alt + tstep*x2alt;
    x2neu = x2alt + tstep*(-g/l*sin(x1alt));
    vec_x1neu = [vec_x1neu, x1neu];
    vec_x2neu = [vec_x2neu, x2neu];
    x1alt = x1neu;
    x2alt = x2neu;
end

plot(vec_t, vec_x1neu, vec_t, vec_x2neu)
xlabel('t');
ylabel('phi/speed');