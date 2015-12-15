%[X,Y] = meshgrid(-8:.5:8);
%R = sqrt(X.^2 + Y.^2) + eps;
%Z = sin(R)./R;

%figure
%mesh(X,Y,Z)

%Gs = (s^2+2s-8)/(s-2);
w = [-10:0.7:10]; %rad/s
d = [-5: 0.7: 5]; %1/s

[W,D] = meshgrid(w,d);

s = D + 1i * W;
F = 20*log10(abs((s-2)./((s.^2 + 2.*s)-8)));
figure(1)
surf(W,D,F)

num=[1 -2]; % Zählerpolynom
den=[1 2 -8]; % Nennerpolynom
G = tf(num, den);
figure(2)
bode(G)

figure(3)
pzmap(G)