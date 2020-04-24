function[v_out] = system_HW(t,v)
x = v(1);
y = v(2);
v_out = zeros(2,1);
v_out(1) = y;
v_out(2) = ((y.*8.53*(1-x^2))-x-1.2*sin(2*pi*t/10));
end