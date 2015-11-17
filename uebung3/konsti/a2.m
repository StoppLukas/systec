[A,B] = ode45(@brusselator,[0 30],[1 1]);
[C,D] = ode45(@brusselator_lin,[0 30],[1 1]);

plot(A,B,C,D);
