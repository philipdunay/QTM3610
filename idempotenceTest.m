function [ idempotenceTest ] = idempotenceTest( Q )
%Test two matrices for idempotence
    %Idempotence is when the matrix can be operated on and achieve the same 
    %result as the original matrix.
    
if Q == Q^2
    idempotenceTest = 'IDEMPOTENT';
else
    idempotenceTest = 'NOT IDEMPOTENT';
end

