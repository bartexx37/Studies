clear 
close all
clc

f = @(t) exp(-t);
I1 = integral(f,0,2)


f2 = @(t) sin(t).^2;
I2 = integral(f2,0,2*pi)


a=1;
a2=2;

f3 = @(t) exp(-a.*t.^2);
I3 = integral(f3,-10,10)


f3a2 = @(t) exp(-a2.*t.^2);
I3a2 = integral(f3a2,-10,10)