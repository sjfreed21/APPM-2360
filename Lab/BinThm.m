function [S] = BinThm(a,b,n)

S = 0;
for k = 0:n
    S = S + bin_coeff(n,k)*a^(n-k)*b^k;
end     % End For loop
end     % End Function