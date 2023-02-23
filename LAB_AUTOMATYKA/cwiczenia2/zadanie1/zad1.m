clear 
close all
clc
nfontslatex = 18;
nfonts = 14;

w = 0.01:0.01:1000;

            %%%%%%%% Obliczenia dla podpunktu A %%%%%%%%%
fa= @(w) 1/(-w.^2+3*w*i+1);

Xa = arrayfun(fa,w);%Obliczenie wartości transmitancji dla w

argA = angle(Xa);%Obliczenie wartości argumentów w radianach dla zadanych w
arggA = rad2deg(argA);%Przeliczenie argumentów na stopnie

modulA = abs(Xa);%Obliczenie modułów dla zadanych w
ampA = 20*log10(modulA);

            %%%%%%%% Wykresy dla podpunktu A %%%%%%%%%
            
figure%Charakterystyka amplitudowa
semilogx(w,ampA,'r','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
ylim([-120,0])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Magnitude(dB)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

figure%Charakterystyka fazowa
semilogx(w,arggA,'r','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Phase(deg)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

            %%%%%%%% Obliczenia dla podpunktu B %%%%%%%%%
fb= @(w) (1+2*w*i)/(1+30*w*i-9*w.^2);

Xb = arrayfun(fb,w);
argB = angle(Xb);
arggB = rad2deg(argB);

modulB = abs(Xb);
ampB = 20*log10(modulB);


            %%%%%%%% Wykresy dla podpunktu B %%%%%%%%%
figure
semilogx(w,ampB,'b','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
ylim([-120,0])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Magnitude(dB)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

figure
semilogx(w,arggB,'b','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Phase(deg)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

            %%%%%%%% Obliczenia dla podpunktu C %%%%%%%%%
fc= @(w) (1+2*w*i)/((1+3*w*i).^2);

Xc = arrayfun(fc,w);
argC = angle(Xc);
arggC = rad2deg(argC);

modulC = abs(Xc);
ampC = 20*log10(modulC);


            %%%%%%%% Wykresy dla podpunktu C %%%%%%%%%
figure
semilogx(w,ampC,'g','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
ylim([-120,0])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Magnitude(dB)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

figure
semilogx(w,arggC,'g','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Phase(deg)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)




            %%%%%%%% Obliczenia dla podpunktu D %%%%%%%%%
fd= @(w) (1+2*w*i)/((1+3*w*i)*(1+4*w*i));

Xd = arrayfun(fd,w);
argD = angle(Xd);
arggD = rad2deg(argD);

modulD = abs(Xd);
ampD = 20*log10(modulD);


            %%%%%%%% Wykresy dla podpunktu D %%%%%%%%%
figure
semilogx(w,ampD,'y','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
ylim([-120,0])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Magnitude(dB)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

figure
semilogx(w,arggD,'y','LineWidth' , 2.0)
grid on 
xlim([10.^-2,10.^3])
set(gca,'FontSize',nfonts);
xlabel('$Frequency(rad/s)$','Interpreter','Latex', ...
'FontSize',nfontslatex)
ylabel('$Phase(deg)$', ...
'Interpreter','Latex', ....
'FontSize',nfontslatex)

