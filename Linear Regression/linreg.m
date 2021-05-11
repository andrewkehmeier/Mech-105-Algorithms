function [m,y0] = linreg(x,y)
%linreg calculates the linear regression of tabulated data using the normal
%equations
%   linreg takes two vector inputs and uses these inputs alongside the
%   normal equations to calculate the slope and y intercept of the best fit
%   line for the tabulated data.  Function also utilizes calculated best
%   fit equation to calculate the coefficient of determination.
xb=mean(x);
yb=mean(y);
n=length(x);
if size(x)~= size(y)
    error('Array inputs must be of same dimension')
end
m=((sum((x-xb).*(y-yb)))./(sum((x-xb).^2)));
y0=sum(y-m*x)/n;
f=@(x)m.*x+y0;
St=sum((y-yb).^2);
Sr=sum((y-f(x)).^2);
cd=(St-Sr)/St;
end

