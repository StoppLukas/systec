function j = calc3(t)
is = 0.0001;
ut = 0.03;
j = (((is / ut^2) * exp((0.15 + 0*(t - 0.15)) / ut)) / 2) * (t - 0.15)^2;
end