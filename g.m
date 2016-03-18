function [ y ] = g(x, x1, x2, x_b1, x_b2)
%G defines the function g of the weak formulation
%   Defines the function g on the RHS of the weak formulation. Needed to 
%   fulfill the boundary conditions
%
%   INPUT:
%   x       ...     point on which the evalution take place
%
%   OUTPUT:
%   y       ...     evaluted value on point x
%
%
    b(1,1) = x_b1;
    b(2,1) = x_b2;
    A(1,1) = x1;
    A(2,1) = x2;
    A(1,2) = 1;
    A(2,2) = 1;

    tmp = A \ b;
    y = x.* tmp(1) + tmp(2);
end

