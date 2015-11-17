function Fl = luftwiderstand(t, x, p)
% v = x(1)
cw = p(1);
A = p(2);
rho = p(3);

Fl = cw * A * rho / 2 * x(1)^2;
end