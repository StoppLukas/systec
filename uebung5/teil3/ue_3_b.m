T = [10 10 10 10 1 1 1 1 -1 -1 -1 -1];
K = 1;

W0 = 1 ./ T;
D = [-10 -1 1 10 -10 -1 1 10 -10 -1 1 10];

figure
n = size(W0, 2);
for k = 1:n
	H(k) = tf([W0(k)^2], [1 2*D(k)*W0(k) W0(k)^2]);
	subplot(3, 4, k);
	step(H(k));
	title(sprintf('W0 = %d, D = %d', W0(k), D(k)));
end

figure
n = size(W0, 2);
for k = 1:n
	H(k) = tf([W0(k)^2], [1 2*D(k)*W0(k) W0(k)^2]);
	subplot(3, 4, k);
	pzmap(H(k));
	title(sprintf('W0 = %d, D = %d', W0(k), D(k)));
end

figure
n = size(W0, 2);
for k = 1:n
	H(k) = tf([W0(k)^2], [1 2*D(k)*W0(k) W0(k)^2]);
	subplot(3, 4, k);
	impulse(H(k));
	title(sprintf('W0 = %d, D = %d', W0(k), D(k)));
end
