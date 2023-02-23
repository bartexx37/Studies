clear 
close all
clc

            %%%%%%%% Obliczenia dla podpunktu A %%%%%%%%%
            
%Tworzenie transmitancji
licznikA = [1];
mianownikA = [1,3,1];
Ga = tf(licznikA,mianownikA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = [0,1;  -1,-3];

eig(A)%Wartości własne macierzy A

biegunyA = pole(Ga)%Obliczenie biegunów transmitancji

            %%%%%%%% Obliczenia dla podpunktu B %%%%%%%%%
            
%Tworzenie transmitancji
licznikB = [2,1];
mianownikB = [9,30,1];
Gb = tf(licznikB,mianownikB)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Ab = [0,1; -1/9,-30/9];%Tutaj przeliczone zostały współczynniki tak, aby przy najwyższy był równy 1,
                       %tak samo zostało zrobione w pozostałych.
eig(Ab)%Wartości własne macierzy Ab


biegunyB = pole(Gb)%Obliczenie biegunów transmitancji

            %%%%%%%% Obliczenia dla podpunktu C %%%%%%%%%
            

%Tworzenie transmitancji
licznikC = [2,1];
mianownikC = [9,6,1];
Gc = tf(licznikC,mianownikC)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Ac = [0,1 ; -1/9,-6/9];
eig(Ac)%Wartości własne macierzy Ac

biegunyC = pole(Gc)%Obliczenie biegunów transmitancji

            %%%%%%%% Obliczenia dla podpunktu D %%%%%%%%%
            

%Tworzenie transmitancji
licznikD = [2,1];
mianownikD = [12,7,1];
Gd = tf(licznikD,mianownikD)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Ad = [0,1 ; -1/12,-7/12];
eig(Ad)%Wartości własne macierzy Ad

biegunyD = pole(Gd)%Obliczenie biegunów transmitancji

%Wartości biegunów są ujemne, co oznacza, że leżą one w lewej
%półpłaszczyźnie, a co za tym idzie układy z danymi
%transmitancjami są stabilne.
