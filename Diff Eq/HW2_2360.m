% APPM 2360 Matlab Homework 2 - Sam Freed
% Due Thursday, Jan 31st, 2019

% Problem 1:
figure(1);
x = -10:0.1:8 ;
y = (x-6).*(x.^2-1).*(x+8);
z = x.*0;
hold on
xlim([-10,8]);
xlabel('x');
ylabel('y = (x-6)(x^2-1)(x+8)');
plot(x,y,'LineWidth',2);
plot(x,z,'k');
plot(z,y,'k');
plot(x(21),y(21),'xk');
plot(x(91),y(91),'xk');
plot(x(111),y(111),'xk');
plot(x(161),y(161),'xk');

%% Problem 2:
for k = 0:1:100
    s = ((-3)^-k)/(k.*2+1);
end
s = sqrt(12) * s;
disp(s);

%% Problem 3:
figure(2);
t = -4:0.1:4;
for c = [1/2,1,2]
    hold on
    yt = c.*exp(-t.^2);
    plot(t,yt);
    xlabel('t');
    ylabel('c*e^{-t^2} for values of c');
    hold off
end
legend('c = 1/2','c = 1','c = 2');