<<<<<<< HEAD
function j = calc3(t)
is = 0.0001;
ut = 0.03;
j = (((is * (ut + 0.150) * exp(0.150 / ut)) / ut^3) / 2) * (t - 0.150)^2;
=======
function j = calc3(t)
is = 0.0001;
ut = 0.03;
j = (((is / ut^2) * exp((0.15 + 0*(t - 0.15)) / ut)) / 2) * (t - 0.15)^2;
>>>>>>> a3ddedf83948d4ba223ff3065c62176cb9a2f4c6
end