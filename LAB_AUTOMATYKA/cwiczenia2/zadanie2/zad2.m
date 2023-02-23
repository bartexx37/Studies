clear 
close all
clc
nfontslatex = 18;
nfonts = 14;

u = @(t) 1;
tInit = 0;
tFinish = 10;
xInit = [0;0];
            %%%%%%%% Obliczenia dla podpunktu A %%%%%%%%%

%realizacje (A, B, C)            
A = [0,1;  -1,-3];
B = [0;1];  
C = [1,0];

f = @(t,x)  A*x + B*u(t);

[t,X] = ode45(f,[tInit,tFinish],xInit);
y=X*C';

figure
plot(t,y(:,1),'r','LineWidth',2.0)
grid on
set(gca,'FontSize',nfonts);
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$y_{a}$', ...
'Interpreter','Latex','FontSize',nfontslatex)
legend({'$y_{a}$'}, ....
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','Best')


            %%%%%%%% Obliczenia dla podpunktu B %%%%%%%%%
            
Ab = [0,1; -1/9,-30/9];
Bb = [0;1];
Cb = [1/9,2/9];

fB = @(t,xb)  Ab*xb + Bb*u(t);

[t,Xb] = ode45(fB,[tInit,tFinish],xInit);
yb=Xb*Cb';

figure
plot(t,yb(:,1),'b','LineWidth',2.0)
grid on
set(gca,'FontSize',nfonts);
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$y_{b}$', ...
'Interpreter','Latex','FontSize',nfontslatex)
legend({'$y_{b}$'}, ....
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','Best')

            %%%%%%%% Obliczenia dla podpunktu C %%%%%%%%%
            
Ac = [0,1 ; -1/9,-6/9];
Bc = [0;1];
Cc = [1/9,2/9];

fC = @(t,x)  Ac*x + Bc*u(t);

[t,Xc] = ode45(fC,[tInit,tFinish],xInit);
yc=Xc*Cc';

figure
plot(t,yc(:,1),'g','LineWidth',2.0)
grid on
set(gca,'FontSize',nfonts);
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$y_{c}$', ...
'Interpreter','Latex','FontSize',nfontslatex)
legend({'$y_{c}$'}, ....
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','Best')

            %%%%%%%% Obliczenia dla podpunktu D %%%%%%%%%
            
Ad = [0,1 ; -1/12,-7/12];
Bd = [0;1];
Cd = [1/12,2/12];

fD = @(t,x)  Ad*x + Bd*u(t);

[t,Xd] = ode45(fD,[tInit,tFinish],xInit);
yd=Xd*Cd';

figure
plot(t,yd(:,1),'black','LineWidth',2.0)
grid on
set(gca,'FontSize',nfonts);
xlabel('$t$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$y_{d}$', ...
'Interpreter','Latex','FontSize',nfontslatex)
legend({'$y_{d}$'}, ....
'Interpreter','Latex', ...
'FontSize',nfontslatex,'Location','Best')