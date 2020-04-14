function alpha = regulafalsi(f,a0,b0,tolf,maxiter)
    
    a = a0; b = b0; it = 0; stop = false; T = [];

    while it < maxiter && ~stop
        
        % calculo de next_x
        fa = f(a);
        fb = f(b);
        next_x = a - fa*((b-a)/(fb - fa));
        
        % test valor f(next_x)
        fnx = f(next_x);
        tolf_aux = abs(fnx);

        % guardar en tabla
        T = [T; [it, a, next_x, b, fnx]];
        
        % Modificacion del intervalo
        if sign(fa) == sign(fnx)
            b = next_x;
        else
            a = next_x;
        end
        
        stop = tolf_aux < tolf;
        it = it + 1;
    end
    
    array2table(T, "VariableNames", {'it', 'a', 'next_x', 'b', 'f(next_x)'})
    alpha = next_x;

    
end