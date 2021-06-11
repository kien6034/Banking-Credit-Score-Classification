function strY = ToStrRating(Y)
    
    % Change rating of Y from A, AA, BB... to number
strY = zeros(size(Y, 1), 1);
    
for i = 1:size(Y, 1)
    if Y(i) == 1
        strY(i) = "A";
    elseif Y(i) == 2
        strY(i) = "AA";
    elseif Y(i) == 3
        strY(i) = "AAA";
    elseif Y(i) == 4
        strY(i) = "B";
    elseif Y(i) == 5
        strY(i) = "BB";
    elseif Y(i) == 6
        strY(i) = "BBB";
    elseif Y(i) == 7
        strY(i) = "CCC";
    end

end



% =========================================================================

end