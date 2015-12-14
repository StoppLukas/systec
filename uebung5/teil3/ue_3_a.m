T = [];
% Far to the left
T(1) = 0.1;
% Left
T(2) = 10;
% Origin
T(3) = 0;
% Far to the right
T(4) = -0.1;
% Right
T(5) = -10;

K = 1;

figure
n = size(T, 2);
for k = 1:n
	H(index) = tf([K], [T(k) 1]);
	subplot(n, 2, 2*k-1);
	pzmap(H(index));
	title(sprintf('T = %d', T(k)));
	subplot(n, 2, 2*k);
	impulse(H(index));
	title(sprintf('T = %d', T(k)));
end
