figure(1)
x = -pi : 0.1 : pi;
y1 = cos(.5*x.*pi);
y2 = cos(x.*pi);
y3 = cos(2*x.*pi);
hold on
plot(x,y1,'r','LineWidth',2)
plot(x,y2,'g','LineWidth',2)
plot(x,y3,'b','LineWidth',2)
xlabel('\theta','FontSize',18)
ylabel('f_n(\theta)','FontSize',18)
title('f_n(\theta) = cos(n*\theta*\pi) of different values of n','FontSize',18)
legend('n = 1/2','n = 1','n = 2')
hold off

%%

figure(2)
a = -4 : 0.1 : 5;
b = (a+2).*(a-1).*(a-4);
c = a.*0;
hold on
plot(a,b,'b')
plot(a,c,'--r')
xlabel('x','FontSize',18)
ylabel('g(x)','FontSize',18)
title('g(x) and its roots','FontSize',18)
plot(a(21),b(21),'xk','MarkerSize',15)
plot(a(51),b(51),'xk','MarkerSize',15,'HandleVisibility','off')
plot(a(81),b(81),'xk','MarkerSize',15,'HandleVisibility','off')
legend('g(x)=(x+2)(x-1)(x-4)','g(x)=0','roots')