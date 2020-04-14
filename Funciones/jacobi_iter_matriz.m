function [BJ,CJ] = jacobi_iter_matriz(A,b)
    
    d = diag(1./diag(A));    % Inversa diagonal
    L = tril(A,-1);          % Triangular inferior
    U = triu(A,1);           % Triangular superior

    BJ = -d*(L + U);
    CJ = d*b;
end

