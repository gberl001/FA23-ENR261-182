function matPrint(x)
% MATPRINT prints out a matrix with row and column numbers
% Input argument:
% x = matrix of any size
% Output Arguments:
% none

% Compute number of rows and columns
Nrows = size(x,1);
Ncols = size(x,2);

% create a vector of column numbers
ColNums = 1:1:Ncols;

% print out the column numbers
fprintf('\nCol')
fprintf('\t%10i',ColNums)

% print the word Row on its own line
fprintf('\nRow')

% For Loop to print the row numbers and each element in the matrix
for row = 1:1:Nrows
    fprintf('\n%3i    ',row)    % prints the row number on a new line
    fprintf('\t%10.2e',x(row,:)) % prints the elements of the current row on one line
end
        