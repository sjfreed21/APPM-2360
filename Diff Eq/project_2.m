%% A_N Function
%function [A_n] = A_N(n)
%   h = 1/(n+1); 
%   B_n = 2*eye(n) + diag(diag(-1*eye(n-1)),1) + diag(diag(-1*eye(n-1)),-1);
%   A_n = B_n*(n+1)^2;
%end

%% Gram-Schmidt

%% QR Factorization
[Q3,R3] = cgs(A_N(3))
[Q4,R4] = cgs(A_N(4))

%% QR Algorithm
L1 = pi^2;
for i=[10,20,100]
    A = A_N(i);
    for a = 1:1000
        [Q,R] = cgs(A);
        A = R*Q;
    end
    x = diag(A);
    minA = min(x,[],'all');
    err = abs(minA-L1);
    fprintf("Minimum Eigen by QR = %g, Absolute Error = %g\n",minA,err)
end
fprintf("\n");

%% Power Method
for i = [10,20,100]
    I = inv(A_N(i));
    E = 1/power_method(I);
    err = abs(E-L1);
    fprintf("Minimum Eigen by Power = %g, Absolute Error = %g\n",E,err)
end