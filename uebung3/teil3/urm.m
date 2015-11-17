function y = urm(t, x, p)
% x = t
a = p(1);
v0 = p(2);
x0 = p(3);

y = 1 / 2 * a * x^2 + v0 * x + x0;
end