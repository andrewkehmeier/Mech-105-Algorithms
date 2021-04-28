function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
I=0;
n=length(x)-1;
s=x(2)-x(1);
seg=n;
if n>=2
    h=((x(length(x))-x(length(x)-2)))/2;
end
if length(x)~=length(y)
    error('Input vectors must be of the same dimensions')
end
for i=1:(length(x)-1)
    if x(i+1)-x(i)~=s
        error('Inputs are not spaced equivalently')
    end
end
if (ceil(seg/2)~=(seg/2))&&(n>=2)
    warning('Trapezodial rule will be used for final interval because number of itervals is odd')
    for n=1:2:((length(x)-2))
        Ie=(h/3).*(y(n)+4.*y(n+1)+y(n+2));
        I=I+Ie;
    end
    Io=(y(length(x)-1)+y(length(x)))/2;
    I=I+Io;
elseif (ceil(seg/2)==(seg/2))&&(n==2)
    for n=1:2:((length(x))-2)
        Ie=(h/3).*(y(n)+4.*y(n+1)+y(n+2));
        I=I+Ie;
    end
elseif (ceil(seg/2)==(seg/2))&&(n>2)
    for n=1:2:((length(x))-2)
        Ie=(h/3).*(y(n)+4.*y(n+1)+y(n+2));
        I=I+Ie;
    end
elseif  (ceil(seg/2)~=(seg/2))&&(n<=1)  
    warning('Trapezodial rule will be used for final interval because number of intervals is odd')
    Io=(y(length(x)-1)+y(length(x)))/2;
    I=I+Io;
else 
end

end