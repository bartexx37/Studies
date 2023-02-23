clear
close all
clc
nfontslatex = 18;
nfonts = 14;

fNY=5;%Częstotliwość Nyquista
Ts = 0.1;%Okres próbkowania
w = 0.01:0.01:2*fNY*pi;%Rysuje wykres do połowy w próbkowania
z =2*fNY*pi; %w dla częstotliwości Nyquista
f = @(w) (0.0045*exp(-i*w*Ts)+0.0041*exp(-2*i*w*Ts))/(1-1.7322*exp(-i*w*Ts)+0.7408*exp(-2*i*w*Ts));
X = arrayfun(f,w);

mod = abs(X);
amp = 20*log10(mod);

arg = angle(X);
argDeg = rad2deg(arg);


figure%Charakterystyka amplitudowa
semilogx(w,amp,'black','LineWidth' , 2.0)
grid on 
hold on

ylim([-80,0])
y=ylim;
semilogx([z z],[y(1) y(2)],'r','Linewidth',2.0)

xlim([10.^-2,10.^2])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Magnitude(dB)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)


figure%Charakterystyka fazowa
semilogx(w,(180/pi)*unwrap(arg),'black','LineWidth' , 2.0)
grid on 
hold on
xlim([10.^-2,10.^2])
ylim([-300,0])
y=ylim;
semilogx([z z],[y(1) y(2)],'r','Linewidth',2.0)
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Phase(deg)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)
