%% Problem 1
C = 7*ones(2,5)

%% Problem 2
a =[3 -1 5 11 -4 2];
b =[7 -9 2 13 1 -2];
c =[-2 4 -7 8 0 9];
i = [a;b;c];
ii(:,1) = a;
ii(:,2) = b;
ii(:,3) = c;
transpB = ii'
origA = i
transpA = i'
origB = ii

%% Problem 3
a = 2*ones(1,4);
b = -1*ones(1,3);
c = diag(a) + diag(b,1) + diag(b,-1)

%% Problem 4
a = [1,-3,5;2,2,4;-2,0,6];
b = [0,-2,1;5,1,6;2,7,-1];
c = [-3,4,-1;0,8,2;-3,5,3];
ab = a+b
ba = b+a
aBC = a+(b+c)
ABc = (a+b)+c
threeac = 3*(a+c)
threeathreec = 3*a + 3*c
Abc = a*(b+c)
AbAc = a*b + a*c

%% Problem 5
A = [-4,3,1;5,6,-2;2,-5,4.5];
b = [-18.2;-48.8;92.5];
x = A\b
Aif = inv(A);
x = Aif * b
Aip = A^-1;
x = Aip *b

%% Problem 6
a = [1,2,3;0,4,5;0,0,6];
b = rand(3);
c = rand(3);
d = rand(3);
det(a)
det(b^-1*a*b)
det(c^-1*a*c)
det(d^-1*a*d)

% These determinants are all the same because while matrix multiplication
% is not communicative, determinant multiplication is, and the determinant
% of an inverse matrix is 1 divided by the determinant of the original
% matrix.