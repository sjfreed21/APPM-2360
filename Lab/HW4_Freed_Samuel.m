%% Problem 1
%{
function [E] = bin_mean(n,p,N)
E = 0;
for x = 1:N
    E = E + x*bin_coeff(n,x)*p^x*(1-p)^(n-x);
end
end
%}

X = bin_mean(100,0.3,75)

% The solution calculated above (and shown below) does match the expected value.
% E[X] = n * p = 100 * 0.3 = 30.

%% Problem 2
%{
function [E] = bin_xsq(n,p,N)
E = 0;
for x = 1:N
    E = E + x^2*bin_coeff(n,x)*p^x*(1-p)^(n-x);
end
end
%}

Var = bin_xsq(100,0.3,75) - (bin_mean(100,0.3,75))^2

% The solution calculated above (and shown below) does match the expected value.
% Var[X] = n * p * (1 - p) = 100 * 0.3 * 0.7 = 21.