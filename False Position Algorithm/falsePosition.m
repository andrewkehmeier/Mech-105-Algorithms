function [root, fx, ea, iter] = falsePosition(func, xl, xu,es, maxit, varargin)
%falsePosition finds the root of a function using false position method
%falsePosition utilizes the false position method to bracket the root and approximate its value within an error of 0.0001%.
%inputs:
    %func:function input using function handle that falsePosition will be used to evaluate
    %xl:x value for lower bound on the bracket surrounding the root
    %xu:x value for upper bound on the bracket surrounding the root
    %maxit:maximum number of iterations the function will go through before terminating
    %varargin:variable to describe any additional parameters used within the function
%outputs
    %root:root of the function esimated to within 0.0001%
    %fx:y value of the function at the estimated value of zero
    %ea:approximate error between final estimate and previous estimate of root
    %iter:number of iterations falsePosition has gone through
%defining initial conditions for iterations, error, and initial root guess
iter=0;
root=xl;
ea=100; 
format long
%default conditions for incorrect inputs and inputs excluding certain factors
if nargin<3
    error('Function requires an input of a function,lower bound, and upper bound');
elseif nargin==3
    es=0.0001;
    maxit=200;
elseif (nargin==4)&&(es~=0.0001)
    maxit=200;
end
%false position method
while (iter<maxit)&&(ea>=es)
    xrold=root;
    root=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
    fx=func(root);
    iter=iter+1;
    ea=abs(((root-xrold)/root)*100);
    if func(xl)*fx<0
        xu=root;
    elseif func(xu)*fx<0
        xl=root;
    elseif fx==0
        disp(root)
        ea=0;break
    else 
        error('The root is not bracketed/no sign change is exhibited')
    end
    
end
%displaying of solution array with 4 aforementioned outputs
sol=[root,fx,ea,iter];
disp(sol)
    

end