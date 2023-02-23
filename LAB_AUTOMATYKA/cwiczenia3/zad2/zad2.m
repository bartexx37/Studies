clear
close all
clc
nfontslatex = 18;
nfonts = 14;

fNY=5;%Częstotliwość Nyquista
Ts = 0.1;%Okres próbkowania


w = 0.01:0.01:4*2*fNY*pi;

f = @(w) (0.0045*exp(-i*w*Ts)+0.0041*exp(-2*i*w*Ts))/(1-1.7322*exp(-i*w*Ts)+0.7408*exp(-2*i*w*Ts));

X = arrayfun(f,w);
mod = abs(X);
amp = 20*log10(mod);
arg = angle(X);

figure%Charakterystyka amplitudowa
plot(w,amp,'black','LineWidth' , 2.0)
grid on 
hold on
ylim([-80,0])
y=ylim;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot([2*fNY*pi 2*fNY*pi],[y(1) y(2)],'r','Linewidth',2.0)
hold on
plot([2*2*fNY*pi 2*2*fNY*pi],[y(1) y(2)],'r--','Linewidth',2.0)
hold on
plot([3*2*fNY*pi 3*2*fNY*pi],[y(1) y(2)],'r--','Linewidth',2.0)
hold on
plot([4*2*fNY*pi 4*2*fNY*pi],[y(1) y(2)],'r--','Linewidth',2.0)
hold on

xlim([0,4*2*fNY*pi])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Magnitude(dB)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)


figure%Charakterystyka fazowa
plot(w,rad2deg(wrapTo2Pi(arg)),'black','LineWidth' , 2.0)
grid on 
hold on
ylim([0,300])
y=ylim;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot([2*fNY*pi 2*fNY*pi],[y(1) y(2)],'r','Linewidth',2.0)
hold on
plot([2*2*fNY*pi 2*2*fNY*pi],[y(1) y(2)],'r--','Linewidth',2.0)
hold on
plot([3*2*fNY*pi 3*2*fNY*pi],[y(1) y(2)],'r--','Linewidth',2.0)
hold on
plot([4*2*fNY*pi 4*2*fNY*pi],[y(1) y(2)],'r--','Linewidth',2.0)
hold on

xlim([0,4*2*fNY*pi])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Phase(deg)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

