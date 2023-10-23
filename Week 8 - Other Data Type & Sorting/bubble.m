function [y] = bubble(x)  % function Definition
% H1: Sorts a vector into ascending order using a Bubble Sort and prints the
% vector after each pass.
% Input Argument:
% x = vector
% Output Argument:
% y = vector x sorted in ascending order

n = length(x);  % compute the number of elements in x

sorted = 0;  % a flag variable used to determine if the vector is fully 
             % sorted.  sorted = 0 if not fully sorted, = 1 if fully sorted.

passes = 0;  % 0 passes completed at the start

% prints the original vector before any sorting passes are made
fprintf('\nVector order after %g passes\n',passes)
fprintf('%g\n',x)
% while loop that continues to make passes through x until it is fully
% sorted.
while (~sorted)
    sorted = 1;  % assumes x is fully sorted at the start of each pass
    passes = passes +1; % add one to the number of passes
    
    % On each pass through vector x the for loop starts with the first
    % element and continues until the (n-passes) element. After the first
    % pass the largest value in x will fall to the last element therefor on
    % the second pass there is no need to check to see if the last value is
    % in the correct order.  After each subsequent pass the x(n-passes:n)
    % elements are in the correct order.  This is why the for loop limits
    % go from 1 to (n-passes).
    for j = 1: n-passes
        if x(j) > x(j+1); % compares the current element x(j) with the next 
                          % element x(j+1)
            temp = x(j);  % stores the current element in a temp memory location
            x(j) = x(j+1); % stores the next value into the current value
            x(j+1) = temp; % stores the original current value into the next
                           % value.
            sorted = 0; % sets sorted to 0 to indicate that an out 
                        % of order element was found. This will cause the
                        % while loop to make another pass through x.
        end
    end
    % Print the vector after a pass has been completed
    fprintf('\nVector order after %g passes\n',passes)
    fprintf('%g\n',x)
end

y = x;  % returns the sorted vector