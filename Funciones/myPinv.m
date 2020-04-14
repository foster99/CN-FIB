function pinv = myPinv(A)

    [U,S,V] = svd(A);
    aux_S = S';
    aux_S = 1./aux_S;
    aux_S(aux_S == Inf) = 0;
    pinv = V * aux_S * U';

end

