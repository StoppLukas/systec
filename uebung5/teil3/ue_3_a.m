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
    if T(k) == 0
    	H(k) = tf([1], [1 0]);
    else
        H(k) = tf([K], [T(k) 1]);
    end
	subplot(n, 2, 2*k-1);
	pzmap(H(k));
	title(sprintf('T = %d', T(k)));
	subplot(n, 2, 2*k);
	impulse(H(k));
	title(sprintf('T = %d', T(k)));
end
