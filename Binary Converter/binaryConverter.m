function [base2] = binaryConverter(base10)
%binaryConverter Function takes a base 10 input and outputs a base 2 number
%   Inputs:
%       base10 - A number in base10
%   Outputs:
%       base2 - The base10 number converted to binary
b=2;
r=0;
index=1;
base2=0;
if base10<0
    error('Function only takes positive numbers')
end
if base10==0
    base2=base10;
end
if base10==1
    base2=base10;
end
while base10>0
    r=mod(base10,b);
    base10=floor(base10/b);
    base2(index)=r;
    index=index+1;
end
base2=flip(base2);


end
