function [L, U, P] = luFactor(A)
% luFactor decomposes a matrix using the LU Decomposition method 
%	This function decomposes a square matrix into a lower and upper triangular
%	matrix utilizing partial pivoting.  The function yields a permutation
%	matrix to indicate if pivoting has occurred.
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix
%Error Checking+Base Matrix Establishment
Ao=A;
v=ones(1,length(A));
P=diag(v);
L=diag(v);
[m,n]=size(A);
if m~=n
error('Matrix must be a square matrix')
end
%Checking for pivot+Gauss Elimination
for k=1:length(A)
    for i=k:length(A)
        if (abs(A(i,k))>(abs(A(k,k))))
        new=A(k,:);
        A(k,:)=A(i,:);
        A(i,:)=new;
        new=P(k,:);
        P(k,:)=P(i,:);
        P(i,:)=new;
        end
    end
    for i=(k+1):length(A) 
            rowOne=((A(i,k))/(A(k,k))*(A(k,:)));
            A(i,:)=(A(i,:))-(rowOne);
    end
end
%Final Matrix Defining
U=A;
L=(P*Ao)/U;
end



%L(i,k)=(A(i,k))/(A(k,k));

