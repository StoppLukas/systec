t0 = 0; tf = 20;
x0 = [0 20];

[t,x] = ode23('pendelgl', [t0,tf], x0);
plot(t, x)
