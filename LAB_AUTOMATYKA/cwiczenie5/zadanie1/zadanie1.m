clear 
close all
clc
nfontslatex = 18;
nfonts = 14;

%Dane
fs = 10000;
ws = 2*pi*fs;
Tf = 5*10^-4;
T = 1/fs;
T1 = T/2;T2=T/2;
R1=0;R2=0;R3=0;
R = 9;
C = 5.4*10^-6;
L = 180*10^-6;
I = 1;
V = 15;
u = @(t) (1-sign(sin(ws*t)))/2;

%Macierze opisujące układ
A = [(-(R1+R2)/L),0;0,-1/(C*(R+R3))];
B = [(-R3*(2*R+R3))/(L*(R+R3))+(R1+R2)/L,(R+2*R3)/(L*(R+R3));-R/(C*(R+R3)),0];
b = [(R3*R*I)/(L*(R+R3))-V/L;0];
f = [V/L;(R*I)/(C*(R+R3))];

A1 = A;
A2 = A+B;
B1 = f;
B2 = f+b;


%Wyznaczenie macierzy fi oraz gamma
f1 = @(t) expm(A1.*(T1-t))*B1; 
f2 = @(t) expm(A2.*(T2-t))*B2; 
fi = expm(A2*T2)*expm(A1*T1);
gamma = expm(A2*T2)*integral(f1,0,T1,'ArrayValued',true) + integral(f2,0,T2,'ArrayValued',true);

%Warunek początkowy, stan ustalony układ dyskretny
xss = (eye(2)-fi)^-1*gamma;

%Rownanie opisujące układ buck-boost
f = @(t,x) A*x +B*u(t)*x + b*u(t) + f;


%Wykorzystanie funkcji ode45 w celu uzyskania danych do narysowania wykresów
xInit = [0,0];
options = odeset('RelTol',1e-14,'AbsTol',1e-14);

[t,X] = ode45(f,[0,Tf],xInit,options);%Obliczenia dla przebiegu natężenia prądu i napięcia dławika z zerowym warunkiem początkowym
[t2,X2] = ode45(f,[0,T],xss,options);%Obliczenia dla jednego cyklu w stanie ustalonym
[t3,X3] = ode45(f,[0,Tf],xss,options);%Obliczenia dla przebiegu natężenia prądu i napięcia dławika w stanie ustalonym
[t4,X4] = ode45(f,[0,T1],xss,options);%Obliczenia dla pierwszej części cyklu w stanie ustalonym
xInit2 = X4(end,:);
[t5,X5] = ode45(f,[T1,T],xInit2,options);%Obliczenia dla drugiej części cyklu w stanie ustalonym

%Obliczenia dla przebiegu natężenia prądu dławika w wersji dyskretnej
N = 6;
w = zeros(1,N);
Td = 0:T:Tf;
x0 = 0;
w(1) = 0;
for k = 1:1:N-1
    xk = fi*x0+gamma;
    x0 = xk;
    w(1,k+1) = xk(1);
end

%Obliczenia dla przebiegu natężenia prądu dławika w wersji dyskretnej w
%stanie ustalonym
o = zeros(1,N);
o(1,:) = xss(1);
for k = 1:1:N-1
    xk2 = fi*xss+gamma;
    xss = xk2;
    o(1,k+1) = xk2(1);
end


%%%%%%Rysowanie wykresów
figure
%Trajektoria stanu z zaznaczonym na czerwono cyklem w stanie ustalonym
plot(X(:,2),X(:,1),'black','LineWidth',2.0)
hold on
grid on
plot(X2(:,2),X2(:,1),'r','LineWidth',2.0)
hold on
grid on
xlabel('$u[V]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$i[A]$', ...
'Interpreter','Latex','FontSize',nfontslatex)

figure
%Przebieg natężenia prądu dławika i w wersji ciągłej
plot(t,X(:,1),'black','LineWidth',2.0)
hold on
grid on
%Przebieg natężenia prądu dławika i w wersji dyskretnej
stem(Td,w,'r','filled','LineWidth',2.0)
hold on
xlabel('$t[s]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$i[A]$', ...
'Interpreter','Latex','FontSize',nfontslatex)

figure
%Przebieg napięcia na dławiku u w wersji ciągłej
plot(t,X(:,2),'black','LineWidth',2.0)
hold on
grid on
xlabel('$t[s]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$u[V]$', ...
'Interpreter','Latex','FontSize',nfontslatex)

figure
%Przebieg natężenia prądu dławika  w stanie ustalonym
plot(t3,X3(:,1),'black','LineWidth',2.0)
hold on
grid on
stem(Td,o,'r','filled','LineWidth',2.0)
xlabel('$t[s]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$i[A]$', ...
'Interpreter','Latex','FontSize',nfontslatex)

figure
%Trajektoria stanu dla jednego cyklu stanu ustalonego
plot(X2(:,2),X2(:,1),'black','LineWidth',2.0)
hold on
grid on
xlabel('$u[V]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$i[A]$', ...
'Interpreter','Latex','FontSize',nfontslatex)

figure
%Trajektoria stanu dla pierwszej części cyklu stanu ustalonego
plot(X4(:,2),X4(:,1),'black','LineWidth',2.0)
grid on
hold on
xlabel('$u[V]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$i[A]$', ...
'Interpreter','Latex','FontSize',nfontslatex)

figure
%Trajektoria stanu dla drugiej części cyklu stanu ustalonego
plot(X5(:,2),X5(:,1),'black','LineWidth',2.0)
grid on
hold on
xlabel('$u[V]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$i[A]$', ...
'Interpreter','Latex','FontSize',nfontslatex)


