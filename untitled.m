clear all
close all
clc

% Données
 Lm = 1.665E-3; 
 Cm = 3.989E-9; 
 C0 = 4.551E-12; 
 Rl = 165.2E3; 
 RM = 2.154;
 FE = 80;
 a = 0.000111;

M=Lm;
Ke=1/Cm;
D=RM;

% Création matrices
A=[0 1 0 ; -Ke/M -D/M -a/M;0 a/C0 -1/(C0*Rl)];
B= [0;1/M;0];
C=[1 0 0;0 0 1];
E = [0;0];

% Création variable d'état
var = ss(A,B,C,E);

% Conditions initiales
x0 = [1;0;0];

% Affichage d'une figure contenant la réponse du système
initial(var,x0);

% Simuler la réponse du système à une sollicitation de type échelon unitaire
ltiview(var);

eig(A)