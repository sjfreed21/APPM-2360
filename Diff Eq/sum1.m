function [S] = sum1(N,x)
S = 0;
for n = 0:N
   S = S + (x.^n/factorial(n));
end