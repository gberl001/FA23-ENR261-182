function [matMean, matStd] = matStat(x)
% MATSTAT computes the mean and standard deviation of a matrix
% Input argument:
% x = real matrix of any size
% Output Arguments:
% matMean = mean of all elements in the matrix
% matStat = standard deviation of all elements in the matrix

% columnMeans is a vector containing the mean of each colum in x
columnMeans = mean(x);

% Overall mean, note that we must use the name matMean in order to return
% this value back to where the function was called from.
matMean = mean(columnMeans);

% colSumDevSq = sum of the deviations squared for each column
colSumDevSq = sum((x - matMean).^2);
sumDevSq = sum(colSumDevSq);

% matStd = sqrt(SumDevSq/(n-1)) whre n = number of elements in matrix x
% We must use the name matStd to return this value
n = size(x,1)*size(x,2);  % rows*columns
matStd = sqrt(sumDevSq/(n-1));
                   
