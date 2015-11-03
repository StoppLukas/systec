function x_dot = pendelgl(t, x)
	G = 9.8;
	L = 10;

	x1_new = x(2);
	x2_new = -G/L*sin(x(1));

	x_dot = [x1_new; x2_new];
end
