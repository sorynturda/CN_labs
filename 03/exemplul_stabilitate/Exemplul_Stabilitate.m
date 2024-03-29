
clear 
close all
clc



tipex='ex1';

[a,b]=Interval_interpolare(tipex);

nx=22; %numarul nodurilor folosite (gradul polinomului va fi nx-1)


x=linspace(a,b,nx);% se genereaza punctele echidistante in intervalul [a,b]
y=fL(x,tipex);% se calculeaza valorile y_i, corespunzatoare nodurilor x_i, folosnd functia fL ("teoretic" functia nu se cunoaste, doar valorile in noduri)

xc=Cebisev(a,b,nx); % se calculeaza nodurile Cebisev corespunzatoare intervalului [a,b]
yc=fL(xc,tipex); % se calculeaza valorile y_i corespunzatoare nodurilor Cebisev x_i (nu sunt echidistante)

perturbatii=rand(1,nx)/10^3;

yp=y+perturbatii;%valorile functiei "perturbate" pt noduri echidistante
ypc=yc+perturbatii;%valorile functiei "perturbate" pt noduri Cebisev

pasz=0.005;
z=a:pasz:b;

L=Lagrange(z,x);% se calculeaza valoarea polinoamelor fundamentale Lagrange in punctul/punctele z (folosind noduri echidistante)
Lc=Lagrange(z,xc); % se calculeaza valoarea polinoamelor fundamentale Lagrange in punctul/punctele z (folosind noduri Cebisev)

Aprox=AproxLagrange(y,L);% se calculeaza valoarea polinomului de interpolare Lagrange pt noduri echidistante
Aproxc=AproxLagrange(yc,Lc);% se calculeaza valoarea polinomului de interpolare Lagrange pt noduri Cebisev

Aproxp=AproxLagrange(yp,L);% se calculeaza valoarea polinomului de interpolare Lagrange pt noduri echidistante si functia "perturbata"
Aproxcp=AproxLagrange(ypc,Lc);% se calculeaza valoarea polinomului de interpolare Lagrange pt noduri Cebisev si functia "perturbata"


figure(1)

subplot(2,1,1)
hold on
box on
title('Valorile functiei')
plot(x,log10(abs(y-yp)))
subplot(2,1,2)
hold on
box on
plot(z,log10(abs(Aprox-Aproxp)))
title('Valolrile polinoamelor pt noduri echidistante')


figure(2)

subplot(2,1,1)
hold on
box on
title('Valorile functiei')
plot(x,log10(abs(yc-ypc)))
subplot(2,1,2)
hold on
box on
plot(z,log10(abs(Aproxc-Aproxcp)))
title('Valolrile polinoamelor pt noduri Cebisev')



