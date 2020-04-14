function [alpha, it] = itera(g,x0,maxiter,tolf,tolx, table)

    if (table)
        T = zeros(maxiter, 4);  % reservo el espacio maximo
    end      
    
    x = x0;
    for it = 1:maxiter
        
        x_next = g(x);
        tolx_aux = abs(x_next - x);
        tolf_aux = abs(g(x_next) - x_next);
        
        if (table)
            T(it,:) = [it, x_next, tolx_aux, tolf_aux];
        end
        
        if (tolx_aux < tolx && tolf_aux < tolf) % test de parada
            break; 
        end
        x = x_next;
        
    end
    alpha = x;
    
    if (it == maxiter)
        disp("Numero maximo de iteraciones alcanzado.");
    end
    
    if (table)
        T = T(1:it,:);          % libero el espacio no usado
        array2table(T, 'VariableNames', {'it', 'x_next', 'tolx_aux', 'tolf_aux'})
    end

end