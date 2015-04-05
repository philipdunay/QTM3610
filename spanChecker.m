function spanChecker = spanChecker(A,v)
% Approximately determines if a vector lies in the span of a matrix

% A is the matrix, v is the vector to check,
% Make sure to enter it as a column vector

Z = orth(A');
spanChecker = round(v-Z*(Z\v));

if spanChecker == zeros(numel(spanChecker),1);
    disp( 'IN SPAN' )
else
    disp( 'NOT IN SPAN' )
end

%Should be close to 0 if v is in the column space of A