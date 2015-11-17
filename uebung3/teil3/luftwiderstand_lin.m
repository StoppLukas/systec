function Fl = luftwiderstand_lin(t, x, p)
% v = x
cw = p(1);
A = p(2);
rho = p(3);
m = p(4);
g = p(5);

% Fg = Fl(v0)
v0 = sqrt(2 * m * g / (cw * rho * A));

% Fl(v) ~= Fl(v0) + dFl(v0)/dt*(v - v0)
Fl = luftwiderstand(t, v0, p) + cw * A * rho * v0 * (x - v0);
end