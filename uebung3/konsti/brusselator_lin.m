function dy = brusselator_lin(~,x)
a=1;
b=1.7;
    dy = zeros(2,1);
    dy(1) = (b-1)*(x(1)-a) + a^2*(x(2)-(b/a));
    dy(2) = -b*(x(1)-a) - a^2*(x(2)-(b/a));
end