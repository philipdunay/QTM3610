function [ symmetryTest ] = symmetryTest( Q )
%Test two matrices for symmetry
    %Symmetry is when the matrix is the same as its transpose

if Q == Q'
    symmetryTest = 'SYMMETRIC';
else
    symmetryTest = 'NOT SYMMETRIC';
end

