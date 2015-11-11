function xy = brusselator_lin(t, x, p)
% x = x(1)
% y = x(2)
A = p(1);
B = p(2);

x_dot = (B + 1) * x(1) + A^2 * x(2) - A * (2 * B + 1);
y_dot = -B * x(1) - A^2 * x(2) + 2 * A * B;

xy = [x_dot; y_dot];
end
