function [] = eigstuff(A)
[V,P] = eig(A);
disp("P ="); disp(P);
if (floor(det(V)) == 0)
    disp("Error. Vectors are not linearly independent.")
    return;
end
Pi = inv(P)
D = Pi*A*P
A = P*D*Pi
end