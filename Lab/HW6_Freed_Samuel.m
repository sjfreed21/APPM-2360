%{
function[v_out] = system_HW(t,v)
x = v(1);
y = v(2);
v_out = zeros(2,1);
v_out(1) = y;
v_out(2) = ((y.*8.53*(1-x^2))-x-1.2*sin(2*pi*t/10));
end
%}

[t_out, v_out] = ode45( @system_HW,[300,600],[2,0]);
figure(1);
subplot(2,1,1);
plot(t_out,v_out(:,1));
xlabel("t");
ylabel("x(t)");
title("x(t) with respect to t");
subplot(2,1,2);
plot(t_out,v_out(:,2),'r');
xlabel("t");
ylabel("y(t)");
title("y(t) with respect to t");
[t_out,v_out] = ode45( @system_HW,[0,20],[2,0]);
figure(2);
plot(v_out(:,1),v_out(:,2),'m');
title("y(t) versus x(t)");
xlabel("x(t)");
ylabel("y(t)");