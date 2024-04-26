% funcie care implementeaza interpolarea Lagrange-forma Newton
clear all
clc
close all

x=linspace(0,6,13);% nodurile de interpolare
f=exp(sin(x));% valorile functiei pt nodurile x, in cazul acesta f(x)=e^(sin(x))
A=DiferenteDivizate(x,f); % tabelul cu diferente divizate

z=0:0.1:6;% punctele pt care se calculeaza valoarea polinomului de interpolare
PIL_New=zeros(1,length(z));
for k=1:length(z)
    PIL_New(k)=Newton(A,x,z(k));% se apeleaza functia pentru calcularea polinomului de interpolare Lagrange -forma Newton
end

% Graficul cu functia exacta si polinomul de interpolare
figure(1)
hold on
box on
plot(z,exp(sin(z)),'r')
plot(z,PIL_New,'b*')
legend('Exact','PIL Newton')