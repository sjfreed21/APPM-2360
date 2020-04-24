x = -pi:0.01:pi;
n = [1/2,1,2];
hold on
for i = 1:3
    plot(x,cos(n(i)*pi*x),'LineWidth',2)
end
hold off
xlabel('x')
ylabel('cos(x*n*\pi)','FontSize',14)
title('y vs x')

%%
for i = -3:3
    if (i >= 0 && i ~= 3)
        disp (i)
    elseif (i <= 0)
        disp (i^3)
    else
        disp(i^2)
    end
end

%%
a = 6;
if (a<0)
    disp('Error - Negative Integer');
elseif (a==0)
    f = 1;
else
    f = 1;
    for i = 1:a
        f = f * i;
    end
end
disp(f)
