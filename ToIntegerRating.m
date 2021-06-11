function intY = ToIntegerRating(Y)
    
    % Change rating of Y from A, AA, BB... to number
intY = zeros(size(Y, 1), 1);
    
for i = 1:size(Y, 1)
    if Y(i) == "A"
        intY(i) = 1;
    elseif Y(i) == "AA"
        intY(i) = 2;
    elseif Y(i) == "AAA"
        intY(i) = 3;
    elseif Y(i) == "B"
        intY(i) = 4;
    elseif Y(i) == "BB"
        intY(i) = 5;
    elseif Y(i) == "BBB"
        intY(i) = 6;
    elseif Y(i) == "CCC"
        intY(i) = 7;
    end

end



% =========================================================================

end
