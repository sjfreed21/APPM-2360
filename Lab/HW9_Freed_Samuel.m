I = eye(6);
P = I([1:4 6:-1:5],:)
A = magic(6)
PA = P*A            
    % Swaps row 5 of A & row 6 of A, A = A([1:4 6:-1:5],:)
AP = A*P            
    % Swaps column 5 of A & column 6 of A, A = A(:,[1:4 6:-1:5])
PAP = P*A*P         
    % Swaps both row & column 5 with row & column 6, 
    % A = A([1:4 6:-1:5],[1:4 6:-1:5])