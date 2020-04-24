syms x(t) t Fs
Dx = diff(x,t);
D2x = diff(Dx, t);
vars = [x(0), Dx(0)];
vals = [0,1];
for k = 1:2
    xEQ = D2x + (k*x) == cos(t);
    xLT = laplace(xEQ);
    xLT = subs(xLT,laplace(x),Fs);
    xFS = solve(xLT,Fs);
    xSO = ilaplace(xFS);
    xFI = subs(xSO, vars, vals);
    disp("xFI =");
    pretty(xFI);
    time = 0:0.1:100;
    xFI = subs(xFI, t, time);
    figure(k);
    if (k == 1) 
        plot(time, xFI);
        legend('k = 1');
    end
    if (k == 2) 
        plot(time, xFI,'r');
        ylim([-5;5]);
        legend('k = 2');
    end
end

%{ 
Once again, the k = 1 equation matches the oscillator's natural
frequency, meaning it resonates and the amplitude increases to 
infinity (in this case, it would increase until the spring breaks).
%}

