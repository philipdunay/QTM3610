function [ orthonormalTest ] = orthonormalTest( Q )
%Test two matrices for orthonormality
    %Orthonormality is when the matrix times its transpose is equal to the
    %identity matrix.
    
[n,p] = size(Q);
a = Q*Q';
i = eye(n);
if a == i
    orthonormalTest = 'ORTHONORMAL';
else
    orthonormalTest = 'NOT ORTHONORMAL';
end

