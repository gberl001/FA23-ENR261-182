function [y] = over21(x,year,month,day)  % function Definition
% H1: Determines if an age is over 21 years old as of a given year,month,day
% Input Arguments:
% x = matrix of dates with the following columns: 4 digit year, 
% 2 digit month, 2 digit day
% year is the current year
% month is the current month
% day is the current day
% Output Argument:
% y = logical vector with a 1's in positions with ages >= 21 and 0's in
%     positions with ages < 21.
 
  