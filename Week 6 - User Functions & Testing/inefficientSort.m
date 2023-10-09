function result = inefficientSort(x)
lenX = length(x);
result = zeros(1,lenX);

for n=1:lenX
    % Get the position of the maximum value
    maxValPos = getMaxValPos(x);

    % Update the value at the current index and clear the value
    result(n) = x(maxValPos);
    x(maxValPos) = [];
end

end

function pos = getMaxValPos(x)
    % Start with maxVal being the lowest value possible and position being 0
    maxVal = -1*realmax;
    pos = 0;

    % Loop through and find the maximum value of vector x
    for n = 1:length(x)
        % If the value at the current index is greater than the current max
        if x(n) > maxVal
            % Update maxVal with the new larger number and record the pos
            maxVal = x(n);
            pos = n;
        end
    end
end