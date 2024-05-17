function [rez]=f(x,tipex)
%calculeaza functia f; 
switch tipex
    case 'ex1'
rez=cos(2*x)^2-x^2;
    case 'ex2'
rez=((x^2-1)^2)*log(x);
end