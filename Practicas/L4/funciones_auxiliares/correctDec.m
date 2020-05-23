function n = correctDec(x,y)
    ea = abs(x - y);
    n = 0;
    while ea < 1
       ea = ea * 10;
       n = n+1;
    end
    
    if ea > 5
       n = n-1;
    end
    
    n = n-1;
end

