clear
close all
clc 
nfontslatex = 18;
nfonts = 14;

tInit = -10;
tInside = 0;
tFinish = 2;

xInit1 = [1/(3^(2/3)*gamma(2/3));-1/(3^(1/3)*gamma(1/3))];
xInit2 = [1/(3^(1/6)*gamma(2/3));3^(1/6)/(gamma(1/3))];

f = @(t,y) [y(2);t*y(1)];%Zapisanie układu równań pierwszego rzędu

%Wykorzystanie procedury ode45 dla warunków początkowych pierwszych
[t,X] = ode45(f,[tInside,tInit],xInit1);
[t2,X2] = ode45(f,[tInside,tFinish],xInit1);

%Wykorzystanie procedury ode45 dla warunków początkowych drugich
[t3,X3] = ode45(f,[tInside,tInit],xInit2);
[t4,X4] = ode45(f,[tInside,tFinish],xInit2);

figure
%Tworzenie wykresu dla warunków początkowych pierwszych
plot(t,X(:,1),'r','LineWidth',2.0)
hold on
grid on
plot(t2,X2(:,1),'r','LineWidth',2.0)
hold on
grid on

%Tworzenie wykresu dla warunków początkowych drugich
plot(t3,X3(:,1),'b','LineWidth',2.0)
hold on
grid on
plot(t4,X4(:,1),'b','LineWidth',2.0)
hold on
grid on

ylim([-1,1]);%Określenie przedziału OY

set(gca,'FontSize',nfonts)
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Ai(t),\,Bi(t)$', ...
'Interpreter','Latex','FontSize',nfontslatex)
legend({'$Ai(t)$','','$Bi(t)$'}, ....
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','Best')
print('VDP.eps','-depsc','-r600')
print('VDP.jpg','-djpeg','-r600')
print('VDP.pdf','-dpdf','-r600')


%Sprawdzenie poprzez funkcje airego
t = tInit:0.01:tFinish;
a = airy(t);
b = airy(2,t);
figure
plot(t,a,'r',t,b,'b','LineWidth',2.0)
grid on
ylim([-1,1]);

set(gca,'FontSize',nfonts)
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Ai(t),Bi(t)$', ...
'Interpreter','Latex','FontSize',nfontslatex)
legend({'$Ai(t)$','$Bi(t)$'}, ....
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','Best')
print('VDP.eps','-depsc','-r600')
