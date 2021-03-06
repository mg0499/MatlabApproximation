function [val] = integral_value(fun, a, b)
% Function INTEGRAL_VALUE returns the value val of integral of function fun
% on interval [a, b]. The method used to calculate the integral is
% 12-point Gauss-Legendere quadrature. 

% points
x_k = [ -0.125233408511469;		
        -0.367831498998180;		
        -0.587317954286617;		
        -0.769902674194305;		
        -0.904117256370475;		
        -0.981560634246719;
         0.125233408511469;		
         0.367831498998180;		
         0.587317954286617;		
         0.769902674194305;		
         0.904117256370475;		
         0.981560634246719];
     
% coefficients 
A_k = [0.249147045813403, 0.233492536538355, 0.203167426723066, 0.160078328543346, 0.106939325995318, 0.047175336386512, 0.249147045813403, 0.233492536538355, 0.203167426723066, 0.160078328543346, 0.106939325995318, 0.047175336386512];
    
val = ((b-a)/2)*A_k * fun(((b-a)/2)*x_k + (a+b)/2);
end

