function [alpha,T] = iterative_solve(A,b,B,c,x0,max_iter,tol,residus)
    
    % Si no quieres usar la tolerancia, pasa tol = -1
    
    x = x0;
    
    if residus
        R = zeros(max_iter,1);
        if tol == -1
            for k = 1:max_iter
                x = B*x + c;
                R(k,1) = norm(b-A*x,1);
            end
        else
            for k = 1:max_iter
                x = B*x + c;
                R(k,1) = norm(b-A*x,1);
                if (R(k,1) < tol); break; end
            end
        end
        
        T = table(R);
        
    elseif tol == -1
        for k = 1:max_iter
            x = B*x + c;
        end
        
    else
        for k = 1:max_iter
            x = B*x + c;
            if (norm(b-A*x,1) < tol); break; end
        end
    end
    
    alpha = x;
end

