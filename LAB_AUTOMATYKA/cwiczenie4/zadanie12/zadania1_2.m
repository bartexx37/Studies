clear 
close all
clc
nfontslatex = 18;
nfonts = 14;

%T1 = 1
%T2 = 2
%ξ = 2
%TL = 3

%Równania transmitancji dla modelu z czasem ciągłym
Ta =  @(s) 1/(s^2+3*s+1);
Tb = @(s) (1+3*s)/(s^2+4*s+1);
Tc = @(s) (1+3*s)/(s^2+2*s+1);
Td = @(s) (1/2+3/2*s)/(s^2+3/2*s+1/2);

% Model Zmiennych w przestrzeni stanu dla podpunktu A
Aa = [0,1;-1,-3];
Ba = [0;1];
Ca = [1,0];
%Model zmiennych w przestrzeni stanu dla podpunktu B
Ab = [0,1;-1,-4];
Bb = [0;1];
Cb = [1,3];
%Model zmiennych w przestrzeni stanu dla podpunktu C
Ac = [0,1;-1,-2];
Bc = [0;1];
Cc = [1,3];
%Model zmiennych w przestrzeni stanu dla podpunktu D
Ad = [0,1;-1/2,-3/2];
Bd = [0;1];
Cd = [1/2,3/2];

%Wywoływanie funkcji
[Ada,Bda,Cda,Gda] = zadd(Aa,Ba,Ca)
[Adb,Bdb,Cdb,Gdb] = zadd(Ab,Bb,Cb)
[Adc,Bdc,Cdc,Gdc] = zadd(Ac,Bc,Cc)
[Add,Bdd,Cdd,Gdd] = zadd(Ad,Bd,Cd)

function [Ad,Bd,Cd,Gd]=zadd(A,B,C) 

nfontslatex = 18;
nfonts = 14;

                             %ZADANIE 1
disp('----------------------------------------------------------------');
disp('Wartości własne macierzy')
eig(A)%Zweryfikowanie, czy jest macierzą Hurwitza

%Model w przestrzeni stanu - dyskretny
disp('Model przestrzeni stanu - dyskretny')

%Przeliczenie modelu przestrzeni oraz transmitancji dla okresu T = 0.1
T = 0.1;
I=[1,0;0,1]; 
fny=1/(2*T);

Ad = expm(A*T);
Bd = inv(A)*(expm(A*T)-I)*B;%Funkcja inv odwraca macierz
Cd = C;
Dd = [0];
funkcja = @(z) Cd(1,:)*inv(eye(2)*z-Ad)*Bd;
w_d = 0.01:0.01:2*fny*pi;
z = exp(1j*w_d*T);

%Skorzystanie z funkcji ss2tf - Wyświetlenie postaci transmitancyjnej w
%konsoli
[licz,mian] = ss2tf(Ad,Bd,Cd,Dd,1);
z1 = tf('z',T);
Gd = tf(licz,mian,T,z1);


                    %ZADANIE 2 - ODPOWIEDZI SKOKOWE

%Odpowiedź skokowa dla modelu z czasem ciągłym
tInit = 0;
tFinish = 10;
xInit = [0;0];
u = @(t) 1;

fstan = @(t,x)  A*x + B*u(t);
[t,X] = ode45(fstan,[tInit,tFinish],xInit);
y=X*C';

%Odpowiedź skokowa dla modelu z czasem dykretnym
tdyskretne = 0:T:10;
N = 100;
U = ones(1,N);
n = 2; % number of state variables
N = size(U,2);
X = zeros(n,N);
x0 = zeros(n,1);
x=x0;

for k = 1:N
x = Ad*x + Bd*U(:,k);
Xd(:,k) = x;
end
yd = Cd*[x0 Xd];

%Rysowanie wykresów
figure
plot(t,y(:,1),'black','LineWidth',2.0)%dla modelu z czasem ciągłym
hold on 
grid on
stem(tdyskretne,yd,'r','filled','LineWidth',1)%dla modelu z czasem dyskretnym
axis([0 10 0 1.5])
hold on
set(gca,'FontSize',nfonts);
xlabel('$t[s]$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$y$', ...
'Interpreter','Latex','FontSize',nfontslatex)

 
end
