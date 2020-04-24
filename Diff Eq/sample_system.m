function [vprime] = sample_system(t,v)
 x = v(1);
 y = v(2);
 vprime = zeros(2,1);
 vprime(1) = y;
 vprime(2) = -x;
end