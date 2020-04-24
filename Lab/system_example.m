function [v_out] = system_example(t,v)
x = v(1);
y = v(2);
v_out = zeros(2,1);
v_out(1) = y;  % x'
v_out(2) = -x; % y'
end