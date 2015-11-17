A = 1;
B = 1.7;

tspan = [0 30];
x0 = [1 1];
p = [A B];
    
[t,x] = ode45(@brusselator, tspan, x0, [], p);
[t_lin,x_lin] = ode45(@brusselator_lin, tspan, x0, [], p);

figure
subplot(2, 1, 1)
plot(t, x(:,1), t_lin, x_lin(:,1))
ylabel('x');
subplot(2, 1, 2)
plot(t, x(:,2), t_lin, x_lin(:,2))
ylabel('y');
xlabel('t');

figure
subplot(2, 1, 1)
plot(t, x(:,1), t, x(:,2))
ylabel('x');
xlabel('y');
subplot(2, 1, 2)
plot(t_lin, x_lin(:,1), t_lin, x_lin(:,2))
ylabel('x');
xlabel('y');
