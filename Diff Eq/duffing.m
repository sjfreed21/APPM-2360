function [vprime] = duffing(t,v)
  x = v(1);
  y = v(2);
  vprime = zeros(2,1);
  vprime(1) = y;
  vprime(2) = (y*-0.3)+(x)-(x^3)+(cos(t*1.2).*0.37);
end
  