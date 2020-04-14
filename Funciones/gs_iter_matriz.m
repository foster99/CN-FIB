function [BGS,CGS] = gs_iter_matriz(A,b)
    
    D = diag(diag(A));       % Diagonal
    L = tril(A,-1);          % Triangular inferior
    U = triu(A,1);           % Triangular superior

    C = inv(L + D);
    BGS = -C * U;
    CGS = C * b;

end

