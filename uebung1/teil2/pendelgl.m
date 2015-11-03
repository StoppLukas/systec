function x_dot = pendelgl(t, x)
	G = 9.8;
	L = 10;
	TSTEP = 0.01;
	TEND = 20;

	vec_x1_new = [];
	vec_x2_new = [];
	for t = 0:TSTEP:TEND
		x1_new = x(1) + TSTEP*x(2);
		x2_new = x(2) + TSTEP*(-G/L*sin(x(1)));
		vec_x1_new = [vec_x1_new, x1_new];
		vec_x2_new = [vec_x2_new, x2_new];
		x(1) = x1_new;
		x(2) = x2_new;
	end

	x_dot = cat(2, vec_x1_new, vec_x2_new);
end
