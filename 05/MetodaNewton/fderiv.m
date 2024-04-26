function [rez]=fderiv(x,tipex)
%calculeaza derivata; pentru alt exemplu atentie la operatiile punctuale
switch tipex
    case 'ex1'
 rez=4*cos(2*x)*(-sin(2*x))-2*x;
    case 'ex2'
 rez=x^3+4*x^3*log(x)-2*x+1/x-4*x*log(x);
end
