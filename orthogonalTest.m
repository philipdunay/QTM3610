function [ orthogonalTest ] = orthogonalTest( Q )
%Test two matrices for orthonormality
    %Orthonormality is when the matrix times its transpose is equal to the
    %identity matrix.
    
[n,p] = size(Q);
a = Q*Q';
i = eye(n);
if a == i
    orthogonalTest = 'ORTHOGONAL';
else
    orthogonalTest = 'NOT ORTHOGONAL';
end

