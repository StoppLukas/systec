x = [];
y = [];
z = [];

for t=0.1:0.001:0.2
    x = [x, calc1(t)];
    y = [y, calc2(t)];
    z = [z, calc3(t)];
end

calc3(0.150 + 0.001)

plot(0.1:0.001:0.2, x, 0.1:0.001:0.2, y, 0.1:0.001:0.2, z)
