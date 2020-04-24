%% Problem 1
%{
function uVectors = orthoBasis(v1,v2)
uVectors = {[0;0],[0;0]};
uVectors{1} = v1/norm(v1);
v2O = v2 - (dot(uVectors{1},v2)*uVectors{1});
uVectors{2} = v2O/norm(v2O);
end
%}

% Set 1
orthoVectors = orthoBasis([1;2],[3;4]);
dotProd = dot(orthoVectors{1},orthoVectors{2})
v1L = norm(orthoVectors{1})
v2L = norm(orthoVectors{2})
% dot product approx. 0 and length of both is 1, so the function works

% Set 2
orthoVectors = orthoBasis([1;0],[7;8]);
dotProd = dot(orthoVectors{1},orthoVectors{2})
v1L = norm(orthoVectors{1})
v2L = norm(orthoVectors{2})
% dot product approx. 0 and length of both is 1, so the function works

% Set 3
orthoVectors = orthoBasis([pi;3],[3;4]);
dotProd = dot(orthoVectors{1},orthoVectors{2})
v1L = norm(orthoVectors{1})
v2L = norm(orthoVectors{2})
% dot product approx. 0 and length of both is 1, so the function works

% Set 4
orthoVectors = orthoBasis([1;2],[4;8]);
dotProd = dot(orthoVectors{1},orthoVectors{2})
v1L = norm(orthoVectors{1})
v2L = norm(orthoVectors{2})
% dot product is not 0 and length of vector 2 did not work because the
% vectors are not linearly independent

% page break
% before next problem
%% Problem 2
A = [1,0,0;0,2,0;0,0,3];
B = [1,0,0;0,2,0;0,0,-3];
C = [1,2,3;4,5,6;7,8,9];
D = [1,0,0;0,-1,0;0,0,1];
E = (3+1)^2 * [2,-1,0;-1,2,-1;0,-1,2];
lValues = zeros(1,5);
matrices = {A,B,C,D,E};
x = ones(3,1);
xNew = zeros(3,1);
for i = 1:5
    for j = 1:100
        xNew = matrices{i}*x;
        x = xNew/norm(xNew);
    end
    lValues(i) = dot(matrices{i}*x,x)/dot(x,x);
    x = ones(3,1);
    xNew = zeros(3,1);
end
disp("Lambda Values:");
disp(lValues);
