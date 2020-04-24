H = [0.5,0.1,0.05,0.01];
yprime = @(t,y) y.^2*cos(t+y);
for i = 1:length(H)
    h = H(i);
    t = 0:h:23;
    y = zeros(1,length(t));
    y(1) = 1;
    for n = 1:(length(t)-1)
        y(n+1) = y(n) + (h * yprime(t(n),y(n)));
    end
    plot(t,y)
    hold on
end
xlabel('t');
ylabel('f(t,y) approximated with step size ''h''');
title('Euler''s Approximations with Different Step Sizes');
hold off
legend('h_1 = 0.5','h_2 = 0.1','h_3 = 0.05','h_4 = 0.01')