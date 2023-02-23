clear 
close all
clc
nfontslatex = 18;
nfonts = 14;


tInit = 0.0;
tFinal = 10.0;
xInit = [0; 0];
A = [-1,1;-1,-0.5];
B = [1;1];
%Określenie wymuszeń
u1 = @(t) 1;
u2 = @(t) sin(t);

f = @(t,x) A*x + B*u1(t);
[t,X] = ode45(f,[tInit;tFinal],xInit);

h = @(t,x) A*x + B*u2(t);
[t1,Z] = ode45(h,[tInit;tFinal],xInit);

eig(A)
% Tworzenie wykresu wartości zmiennych stanu w funkcji czasu dla wymuszenia jednostkowego
figure
plot(t,X(:,1),'r','LineWidth',2.0)
hold on
grid on

plot(t,X(:,2),'b','LineWidth',2.0)
hold on
grid on

% Tworzenie wykresu wartości zmiennych stanu w funkcji czasu dla wymuszenia sinusoidalnego
figure

plot(t1,Z(:,1),'g','LineWidth',2.0)
hold on
grid on

plot(t1,Z(:,2),'y','LineWidth',2.0)

set(gca,'FontSize',nfonts)
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$x_{1},\,x_{2}$', ...
'Interpreter','Latex','FontSize',nfontslatex)
legend({'$x_{1}$','$x_{2}$'}, ....
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','Best')
print('VDP.eps','-depsc','-r600')
print('VDP.jpg','-djpeg','-r600')
print('VDP.pdf','-dpdf','-r600')

%Tworzenie trajektorii stanu dla wymuszenia w postaci jednostkowej
figure

plot(X(:,1),X(:,2),'r','LineWidth',2.0)


set(gca,'FontSize',nfonts)
xlabel('$x_{1}$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$x_{1}$', ...
'Interpreter','Latex','FontSize',nfontslatex)

print('VDP.eps','-depsc','-r600')
print('VDP.jpg','-djpeg','-r600')
print('VDP.pdf','-dpdf','-r600')

