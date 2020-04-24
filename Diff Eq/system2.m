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
