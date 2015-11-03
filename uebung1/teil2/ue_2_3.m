t0 = 0; tf = 20;
x0 = [45 0];

[t,x] = ode23('pendelgl', t0:0.01:tf, x0);
plot(t, x)
