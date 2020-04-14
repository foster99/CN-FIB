function alpha = biseccion(f,a0,b0,tol,maxiter)
    
    a = a0; b = b0; it = 0; T = [];

    while it < maxiter && abs(a - b) > tol
        
        c = (a + b)/2;
        fa = f(a);
        fb = f(b);
        fc = f(c);

        T = [T; [it, abs(a - c), a, c, b, fa, fc, fb]];
        
        if sign(fc) == sign(fb)
            b = c;
        else
            a = c;
        end
        
        it = it + 1;
    end
    
    if (size(T,1) > 1) % si se ha calculado algo
        array2table(T, "VariableNames", {'it', 'cota', 'a', 'c', 'b', 'f(a)', 'f(c)', 'f(b)'})
        alpha = c;
    else
        disp('Los valores de entrada no son correctos y no permiten aplicar el metodo.')
        alpha = 0;
    end
    
    
end