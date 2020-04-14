function alpha = newton(f,df,x0,maxiter,tolf,tolx)
    
    x = x0;
    it = 0;
    stop = false;
    
    T = [];

    while it < maxiter && ~stop
        
        next_x = x - (f(x)/df(x));
        tolx_aux = abs(next_x - x);
        tolf_aux = abs(f(next_x));
        
        T = [T; [it next_x tolf_aux tolx_aux]];
        
        stop = tolx_aux < tolx && tolf_aux < tolf;
        x = next_x;
        it = it + 1;
    end
    
    array2table(T, "VariableNames", {'it', 'x_next', 'tolf', 'tolx'})
    alpha = x;
end