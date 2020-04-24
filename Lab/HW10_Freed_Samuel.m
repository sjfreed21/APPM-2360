h = 0.1;
t = (0:h:100)'; N = length(t);
Dt = spdiags([-1/2,0,1/2]/h.*ones(N,1), [-1 0 1], N, N)
Dt(1,1:3) = [-3/2,2,-1/2]./h
Dt(N,N-2:N) = [1/2,-2,3/2]./h

D2t = spdiags([1,-2,1]/h^2 .* ones(N,1), [-1 0 1], N, N);
D2t(1,1:4) = [2 -5 4 -1]./h^2;
D2t(N,N-3:N) = [-1 4 -5 2]./h^2;

for k = 1:2
    Op = (D2t + k*eye(N));
    Op(1,:) = zeros(1,N); Op(1,1) = 1;
    Op(N,:) = Dt(1,:);
    f = cos(t);
    f([1,N]) = [0,1];
    x = Op\f;
    hold on;
    plot(t,x);
end   
legend('k = 1','k = 2');

% With the k = 1 equation, the oscillator's natural frequency is matched,
% creating resonance and causing the amplitude to increase forever. With
% the k = 2 equation, beating occurs due to a mismatch in the frequencies.
% The k = 1 instance is more likely to break due to its infinitely
% increasing amplitude.