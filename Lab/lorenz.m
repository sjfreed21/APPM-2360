function vprime = lorenz(t,v)
x = v(1); y = v(2); z = v(3);
sigma = 10; rho = 28; beta = 8/3;
vprime = zeros(3,1);
vprime(1) = sigma*(y - x);
vprime(2) = x*(rho - z) - y;
vprime(3) = x*y - beta*z;
end
