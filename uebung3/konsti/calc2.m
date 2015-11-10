function j = calc2(t)
is = 0.0001;
ut = 0.03;
j = 0.01474 + (is/ut * exp(0.150/ut)) * (t - 0.150);
end

