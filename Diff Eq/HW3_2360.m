% APPM 2360 Matlab Homework 3 - Sam Freed
% Due Thursday, Feb 7th, 2019

% Problem 1:
%{
function [S] = sum1(N,x)
S = 0;
for n = 0:N
   S = S + (x.^n/factorial(n));
end
%}
lim = sum1(100,1)
x = -2:0.5:5;
figure(1);
hold on
plot(x,sum1(100,x))
xlabel('x value');
ylabel('f(x) evaluated at x values');
hold off

%% Problem 2
%{
function [vprime] = system2(t,v)
  x1 = v(1);
  x2 = v(2);
  x3 = v(3);
  x4 = v(4);
  vprime = zeros(4,1);
  vprime(1) = x2;
  vprime(2) = x3;
  vprime(3) = x4;
  vprime(4) = (x1.*-8)+(x2.*sin(t))-x3.*3+t.^2;
end
%}
[t,v1] = ode45(@system2,[0,25],[1,2,3,4]);
figure(2);
hold on
plot(t, v1(:,1),'b');
plot(t, v1(:,2),'r');
plot(t, v1(:,3),'g');
plot(t, v1(:,4),'y');
xlabel('time t');
ylabel('x_n(t)');
hold off
legend('n = 1','n = 2','n = 3','n = 4');
figure (3);
hold on
plot(v1(:,2),v1(:,3));
xlabel('x_2(t)');
ylabel('x_3(t)');
hold off

%% Problem 3
%{
function [vprime] = duffing(t,v)
  x = v(1);
  y = v(2);
  vprime = zeros(2,1);
  vprime(1) = y;
  vprime(2) = (y*-0.3)+(x)-(x^3)+(cos(t*1.2).*0.37);
end
%}
i = 0:0.1:38;
[t,v2] = ode45(@duffing,i,[1,0]);
figure(4);
hold on
plot(v2(:,1),v2(:,2));
xlabel('x(t)');
ylabel('y(t)');
hold off
figure(5);
hold on
plot(t, v2(:,1),'b');
plot(t, v2(:,2),'r');
xlabel('time t');
ylabel('x(t) or y(t)');
hold off
legend('x(t)','y(t)');
