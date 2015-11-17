function dy = brusselator(~,x)
a=1;
b=1.7;
    dy = zeros(2,1);
    dy(1) = a + x(1)^2*x(2) - ( b + 1)*x(1);
    dy(2) = b*x(1) - x(1)^2 * x(2);
end