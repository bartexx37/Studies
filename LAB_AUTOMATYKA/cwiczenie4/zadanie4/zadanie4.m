clear 
close all
clc

%Równania transmitancji dla s=jw modelu z czasem ciągłym
Ta =  @(s) 1/(s^2+3*s+1);
Tb = @(s) (1+3*s)/(s^2+4*s+1);
Tc = @(s) (1+3*s)/(s^2+2*s+1);
Td = @(s) (1/2+3/2*s)/(s^2+3/2*s+1/2);
syms w

fa= @(w) arrayfun(Ta,w*i);
fb= @(w) arrayfun(Tb,w*i);
fc= @(w) arrayfun(Tc,w*i);
fd= @(w) arrayfun(Td,w*i);

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
nameA='podpunkt A';nameB='podpunkt B';nameC='podpunkt C';nameD='podpunkt D';
%Wywoływanie funkcji
zadd(Aa,Ba,Ca,fa,nameA)
zadd(Ab,Bb,Cb,fb,nameB)
zadd(Ac,Bc,Cc,fc,nameC)
zadd(Ad,Bd,Cd,fd,nameD)

function zadd(A,B,C,f,name)   

nfontslatex = 18;
nfonts = 14;
                %ZADANIE 4 - CHARAKTERYSTYKI BODEGO

%Przeliczenie modelu przestrzeni oraz transmitancji dla okresu T = 0.01
T2 = 0.01;
I=[1,0;0,1]; 

fNY=1/(2*T2);%Częstotliwość Nyquista
wn =2*fNY*pi; %w dla częstotliwości Nyquista
wd = 0.01:0.01:2*fNY*pi;

Ad2 = expm(A*T2);
Bd2 = inv(A)*(expm(A*T2)-I)*B;%Funkcja inv odwraca macierz
Cd2 = C;
Dd2 = [0];
funkcja2 = @(z) Cd2(1,:)*inv(eye(2)*z-Ad2)*Bd2;
w_d = 0.01:0.01:2*fNY*pi;
z = exp(1j*w_d*T2);

w = 0.01:0.01:1000;%w dla modelu ciągłego

%Obliczenie dla ciągłego
X = arrayfun(f,w);
mod = abs(X);
amp = 20*log10(mod);
arg = angle(X);
argg = rad2deg(arg);

%Obliczenie dla dyskretnego
Xd = arrayfun(funkcja2,z);
modd = abs(Xd);
ampd = 20*log10(modd);
argd = angle(Xd);

figure
subplot(2,1,1);%Charakterystyka amplitudowa
semilogx(w,amp,'r','LineWidth' , 2.0)%dla modelu ciągłego
hold on
grid on 
semilogx(wd,ampd,'black','LineWidth' , 2.0)%dla modelu dyskretnego
hold on

xlim([10.^-2,10.^3])

%Wybór granicy y dla wykresów, max amp jest za kazdym razem największe
a  = max(amp);
ad = max(ampd);
b = min(amp);
bd = min(ampd);
if bd<b && a>ad
    ylim([bd,a]);
    y=ylim;
elseif bd>b && ad>a
    ylim([b,ad]);
    y=ylim;
elseif bd>b && a>ad
    ylim([b,a]);
    y=ylim;
else
    ylim([bd,ad])
end
plot([wn wn],[y(1) y(2)],'r--','Linewidth',2.0)
hold on
title('Charakterystyka amplitudowa '+string(name))
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Magnitude(dB)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

%Charakterystyka fazowa
subplot(2,1,2);
semilogx(w,argg,'r','LineWidth' , 2.0)%dla modelu ciągłego
hold on
grid on 
semilogx(wd,(180/pi)*unwrap(argd),'black','LineWidth' , 2.0)%dla modelu dyskretnego
xlim([10.^-2,10.^3])

%Wyznaczanie wartości maksymalnych oraz minimalnych wykresów w celu
%odpowiedniego ustawienia widoku funkcji
a  = max(argg);
ad = max((180/pi)*unwrap(argd));
b = min(argg);
bd = min((180/pi)*unwrap(argd));
if bd<b && a>ad
    ylim([bd,a]);
    y=ylim;
elseif bd>b && ad>a
    ylim([b,ad]);
    y=ylim;
elseif bd>b && a>ad
    ylim([b,a]);
    y=ylim;
else
    ylim([bd,ad])
end
plot([wn wn],[y(1) y(2)],'r--','Linewidth',2.0)
hold on
title('Charakterystyka częstotliwościowa '+string(name))
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Phase(deg)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

end