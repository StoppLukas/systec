function xy = brusselator_lin(t, x, p)
% x = x(1)
% y = x(2)
A = p(1);
B = p(2);
x0 = A;
y0 = B / A;

delta_x = x(1) - x0;
delta_y = x(2) - y0;

x_dot = (2 * x0 * y0 - (B + 1)) * delta_x + x0^2 * delta_y;
y_dot = (B - 2 * x0 * y0) * delta_x - x0^2 * delta_y;

xy = [x_dot; y_dot];
end
