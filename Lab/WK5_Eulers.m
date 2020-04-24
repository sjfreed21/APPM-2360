yprime = @(t,y) y*t;
h = 0.001;
t = 0:h:4;
y = zeros(1,length(t));
y(1) = 1;
for n = 1:(length(t)-1)
    y(n+1) = y(n) + (h * yprime(t(n),y(n)));
end
yexact = exp(.5*t.^2);
hold on
plot(t,y,'b')
plot(t,yexact,'r')
hold off
