% Joy Mueller, APPM 2460 Section 005
% APPM 2460: Functions
% The binomial coefficient binom{n}{k} = n!/( (n-k)! k! )
% where n, k \in Z and n > k > 0 or k = 0
% is defined as a function

function [nCk] = bin_coeff(n,k)

d = n-k;

nfact = 1;
kfact = 1;
dfact = 1;

if (n < k)
    % Error Message 1
    disp('n is less than or equal to k')
elseif (n < 0) || (k < 0)
    % Error Message 2
    disp('n or k is less than 0')
else
    for ii = 1:1:n
        nfact = nfact*ii;
    end
    
    for jj = 1:1:k
        kfact = kfact*jj;
    end
    
    for kk = 1:1:d
        dfact = dfact*kk;
    end    
    
end      % End If-statement

nCk = nfact/(dfact*kfact);
end      % End Function

