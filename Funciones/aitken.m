function T = aitken(g, x, n, mode)

    x0 = x;
    x1 = g(x0);
    
    T = [0 x0 NaN; 1 x1 NaN];
    
    for it=2:n
        
        x2 = g(x1);
        x2_prime = (x2*x0 - x1*x1)/(x2 - 2*x1 + x0); 
        
        T = [T; it x2 x2_prime];
        
        x0 = x1;
        x1 = x2;
        
    end
    
    if (mode == "table")
        T = array2table(T,"VariableNames",{'it', 'x2', 'x2_prime'});
    end

end