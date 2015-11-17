function j = calc3(t)
is = 0.0001;
ut = 0.03;
j = (((is * (ut + 0.150) * exp(0.150 / ut)) / ut^3) / 2) * (t - 0.150)^2;
end