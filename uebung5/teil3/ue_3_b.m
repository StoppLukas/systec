K = 1;

W0 = [10 10 10 10 5 5 5 5 0.1 0.1 0.1 0.1];
%D = [0.1 0.01 0 -0.1 0.1 0.1 0.1 0.1 10 100 -1 -1000];
D = [0.1 0.01 0 -0.1 0.1 0.01 0 -0.1 10 100 -1 -1000];

%figure
n = size(W0, 2);
%for k = 1:n
%	H(k) = tf([W0(k)^2], [1 2*D(k)*W0(k) W0(k)^2]);
%	subplot(3, 4, k);
%	step(H(k));
%	title(sprintf('W0 = %d, D = %d', W0(k), D(k)));
%end

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
    axis([0 10 -15 15]);
end
