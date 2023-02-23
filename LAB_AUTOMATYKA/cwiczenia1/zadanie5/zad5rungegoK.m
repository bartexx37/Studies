close all
clear
clc
nfontslatex = 18;
nfonts = 14;
%Równania określające napięcie oraz prąd
volC = @(t) 2*exp(-t)-2*(1+t).*exp(-2*t);
cirCurr = @(t) -exp(-t)+(1+2*t).*exp(-2*t);

tInit = 0.0;
tFinal = 5.0;
figure % plots of voltage and current
T = 0.01;
t = tInit:T:tFinal;
plot(t,volC(t),'r',t,cirCurr(t),'b', ...
'LineWidth', 2.0)
set(gca,'FontSize',nfonts);
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$v_{{\rm c}},i$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)
grid on
legend({'$v_{{\rm c}}$','$i$'}, ...
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','NorthEast')
print('voltageAndCurrentPlots.eps','-depsc','-r600')
print('voltageAndCurrentPlots.jpg','-djpeg','-r600')
print('voltageAndCurrentPlots.pdf','-dpdf','-r600')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Określenie funkcji
R = 3.0; L = 1.0; C=0.5;
A = [0 1/C; -1/L -R/L];
B = [0; 1/L];
u = @(t) exp(-2*t);
f = @(t,x) A*x+B*u(t);
xInit = [0; 0];

%Dla skoku T = 0.1

T = 0.1; % integration step size
t = tInit:T:tFinal;
N = length(t);
X = zeros(2,N);
X(:,1) = xInit;

% rungeg integration
for k=1:N-1
x1 = T*f(t(k),X(:,k));
x2 = T*f(t(k)+T/2,X(:,k)+x1/2);
x3 = T*f(t(k)+T/2,X(:,k)+x2/2);
x4 = T*f(t(k+1),X(:,k)+x3);
X(:,k+1) = X(:,k) + (x1+2*x2+2*x3+x4)/6;
end
%Obliczanie błędów rms
rmsXv = rms(X(1,:)-volC(t),2)
rmsXi = rms(X(2,:)-cirCurr(t),2)


%Dla skoku T = 0.2

T2 = 0.2; % integration step size
t2 = tInit:T2:tFinal;
N = length(t2);
X = zeros(2,N);
X(:,1) = xInit;

% rungeg integration
for k=1:N-1
x1 = T2*f(t2(k),X(:,k));
x2 = T2*f(t2(k)+T2/2,X(:,k)+x1/2);
x3 = T2*f(t2(k)+T2/2,X(:,k)+x2/2);
x4 = T2*f(t2(k+1),X(:,k)+x3);
X(:,k+1) = X(:,k) + (x1+2*x2+2*x3+x4)/6;
end
%Obliczanie błędów rms
rmsXv2 = rms(X(1,:)-volC(t2),2)
rmsXi2 = rms(X(2,:)-cirCurr(t2),2)
%Wartości rms zgadzają się z tymi podanymi w tabeli
