function ret = serie1(m)
    lista = (0:m);
    lista = ((-1/3).^lista)./(2.*lista + 1);
    ret = sqrt(12) * sum(lista);
end

