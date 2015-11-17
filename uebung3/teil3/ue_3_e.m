A = 0.5;
cw = 1.3;
rho_luft = 1.2;
m = 80;
g = 9.8;
h0 = 3000;

tspan = [0 1];
v0 = 0;
p = [A cw rho_luft m g];

[t,x] = ode45(@(t, x, p) (luftwiderstand(t, x, p) - schwerkraft(t, x, p)) / m, tspan, v0, [], p);
[t_lin,x_lin] = ode45(@(t, x, p) (luftwiderstand_lin(t, x, p) - schwerkraft(t, x, p)) / m, tspan, v0, [], p);

figure
plot(t, x, t_lin, x_lin)
xlabel('t');
ylabel('a');
title('Luftwiderstand');
