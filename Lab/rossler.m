function vprime = rossler(t,v)
x = v(1); y = v(2); z = v(3);
a = 0.1; b = 0.1; c = 14;
vprime = zeros(3,1);
vprime(1) = -y - z;
vprime(2) = x + (a * y);
vprime(3) = b + z * (x - c);
end