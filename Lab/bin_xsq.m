function [E] = bin_xsq(n,p,N)
E = 0;
for x = 1:N
    E = E + x^2*bin_coeff(n,x)*p^x*(1-p)^(n-x);
end
end