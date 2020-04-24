function [v_out] = vanderPol(t,v)
x = v(1);
y = v(2);
v_out = zeros(2,1);
v_out(1) = y;
v_out(2) = y.*(1-x^2)-x;
end