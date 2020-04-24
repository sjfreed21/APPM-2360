%% EigenStuff Function
%{ 
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
%}

%% 3x3 Diagonizable
G = [1,2,-1;1,0,1;4,-4,5];
eigstuff(G);

%% 3x3 Non-Diagonizable
B = [1,1,0;0,1,1;0,4,4];
eigstuff(B);
