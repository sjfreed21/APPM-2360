%% 2.3a
figure(1);
H = [0.5,0.1,0.01];
cougar = @(t,x) 0.65*(1 - (x./5.4))*x;
for i = 1:length(H)
    h = H(i);
    t = 0:h:25;
    x = zeros(1,length(t));
    x(1) = 0.5;
    for n = 1:(length(t)-1)
        x(n+1) = x(n) + (h * cougar(t(n),x(n)));
    end
    plot(t,x)
    hold on
end
cexact = @(t) 5.4 ./ (1 + ((10.8 - 1) * exp(-0.65*t)));
plot(t,cexact(t))
xlabel('Time (days)','Interpreter','latex');
ylabel('Population (dozens)','Interpreter','latex');
title('Cougar Population Approximations and Exact Value','Interpreter','latex');
hold off
legend('step size = 0.5','step size = 0.1','step size = 0.01','exact solution','Location','best','Interpreter','latex')
print -depsc Fig1

%% 2.3b
figure(2);
cougar = @(t,x) 0.65*(1 - (x./5.4))*x;
cexact = @(t) 5.4 ./ (1 + ((10.8 - 1) * exp(-0.65*t)));
for j = [0.5,0.1,0.01]
    t = 0:j:25;
    x = zeros(1,length(t));
    x(1) = 0.5;
    for n = 1:(length(t)-1)
        x(n+1) = x(n) + (j .* cougar(t(n),x(n)));
    end
    E = abs(cexact(t) - x);
    semilogy(t, E);
    hold on
end
title('Error between Euler approximations and actual value','Interpreter','latex');
xlabel('Time (days)','Interpreter','latex');
ylabel('Log of Error','Interpreter','latex');
legend('step size = 0.5','step size = 0.1','step size = 0.01','Location','best','Interpreter','latex')
print -depsc Fig2

%% 2.6a
figure(3);
deer = @(t,x) 0.65*(1-(x./8.1))*x-((1.2*x.^2)/(1+x.^2));
dirfield( deer, 0:1:25, 0:0.5:6,'Direction Field of Deer Population Model with Hunting');

%% 2.6b
figure(4);
deer = @(t,x) 0.65*(1-(x./8.1))*x-((1.2*x.^2)/(1+x.^2));
H = [0.5,0.1,0.01];
for i = 1:length(H)
    h = H(i);
    t = 0:h:75;
    x = zeros(1,length(t));
    x(1) = 2;
    for n = 1:(length(t)-1)
        x(n+1) = x(n) + (h * deer(t(n),x(n)));
    end
    plot(t,x)
    hold on
end
for i = 1:length(H)
    h = H(i);
    t = 0:h:75;
    x = zeros(1,length(t));
    x(1) = 11;
    for n = 1:(length(t)-1)
        x(n+1) = x(n) + (h * deer(t(n),x(n)));
    end
    plot(t,x)
    hold on
end
xlabel('Time (days)');
ylabel('Population (dozens)');
title('Deer Population Approximations');
hold off
legend('step size = 0.5','step size = 0.1','step size = 0.01','step size = 0.5','step size = 0.1','step size = 0.01','Location','best');

%% 2.6c
figure(5);
deer = @(t,x) 0.65*(1-(x./8.1))*x-((1.2*x.^2)/(1+x.^2));
dirfield( deer, 0:1:25, 0:0.5:11,'Direction Field of Deer Population Model with Hunting');
hold on
H = [0.5,0.1,0.01];
for i = 1:length(H)
    h = H(i);
    t = 0:h:75;
    x = zeros(1,length(t));
    x(1) = 2;
    for n = 1:(length(t)-1)
        x(n+1) = x(n) + (h * deer(t(n),x(n)));
    end
    plot(t,x)
    hold on
end
for i = 1:length(H)
    h = H(i);
    t = 0:h:75;
    x = zeros(1,length(t));
    x(1) = 11;
    for n = 1:(length(t)-1)
        x(n+1) = x(n) + (h * deer(t(n),x(n)));
    end
    plot(t,x)
    hold on
end
xlabel('Time (days)','Interpreter','latex');
ylabel('Population (dozens)','Interpreter','latex');
hold off
legend('step size = 0.5','step size = 0.1','step size = 0.01','step size = 0.5','step size = 0.1','step size = 0.01','Location','best','Interpreter','latex');
print -depsc Fig5
