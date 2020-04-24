function [S] = sum_calc(N,x)
  S = 0;
  for n = 0:N
      S = S + ((-1)^n).*(x^(2*n+1)/factorial(2*n+1));
  end
  