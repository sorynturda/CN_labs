function [rez]=fderiv(x,tipex)
%calculeaza derivata; pentru alt exemplu atentie la operatiile punctuale
switch tipex
    case 'ex1'
 rez=4*cos(2*x)*(-sin(2*x))-2*x;
end
