%{
function [H] = myHilb(n)
h = ones(n,n);
for i = 1:n
    for j = 1:n
        H(i,j) = 1/(i+j-1);
    end 
end
end
%}

H1 = myHilb(5)
H2 = myHilb(7)