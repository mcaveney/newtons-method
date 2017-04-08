function [root, numX] = newtonsMethod(x,y,x0)
highestorder = length(x)-1;
coeff = polyfit(x,y,highestorder);
numX = 0;
%evaluate polynomial
xn = x0;
derivative = (polyder(coeff));
xn1 = xn-(polyval(coeff,xn)./(polyval(derivative,xn)));
while (abs(xn-xn1)>=0.0001)
    xn = xn1;
    numX = numX + 1;
    derivative = (polyder(coeff));
    xn1 = xn-(polyval(coeff,xn)./polyval(derivative,xn));
end
root = round(xn1.*10000)./10000;
end