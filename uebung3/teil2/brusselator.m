function xy = brusselator(t, x, p)
% x = x(1)
% y = x(2)
A = p(1);
B = p(2);

x_dot = A + x(1)^2 * x(2) - (B + 1) * x(1);
y_dot = B * x(1) - x(1)^2 * x(2);

xy = [x_dot; y_dot];
end