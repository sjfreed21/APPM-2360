%{
function vprime = rossler(t,v)
x = v(1); y = v(2); z = v(3);
a = 0.1; b = 0.1; c = 14;
vprime = zeros(3,1);
vprime(1) = -y - z;
vprime(2) = x + (a*y);
vprime(3) = b - z*(x-c);
end
%}

[t,v] = ode45(@rossler, [0,500], [15,1,.1]);
figure(1); 
plot3(v(:,1), v(:,2), v(:,3)); title("3D Model of Rossler System");
figure(2);
subplot(2,1,1); plot(v(:,1),v(:,3)); title("x versus z");
subplot(2,1,2); plot(v(:,2),v(:,3)); title("y versus z");
figure(3); xlim([0,150]);
subplot(2,1,1); plot(t,v(:,2)); title("y values versus t");
subplot(2,1,2); plot(t,v(:,3)); title("z values versus t");