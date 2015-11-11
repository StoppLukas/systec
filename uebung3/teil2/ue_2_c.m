A = 1;
B = 1.7;

tspan = [0 1];
x0 = [1 1];
p = [A B];
    
[t,x] = ode45(@brusselator, tspan, x0, [], p);
[t_lin,x_lin] = ode45(@brusselator_lin, tspan, x0, [], p);

figure
plot(x(:,1), x(:,2), x_lin(:,1), x_lin(:,2))
xlabel('x');
ylabel('y');
title('Brusselator');

figure
subplot(2, 1, 1)
plot(t, x(:,1), t_lin, x_lin(:,1))
ylabel('x');
subplot(2, 1, 2)
plot(t, x(:,2), t_lin, x_lin(:,2))
ylabel('y');
xlabel('t');
