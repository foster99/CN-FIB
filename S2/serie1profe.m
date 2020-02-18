function ret = serie1profe(m)

    % Hay que hacer bucle y calcular el elevado con un acumulador.
    lista = (0:m);
    lista = ((-1/3).^lista)./(2.*lista + 1);
    ret = sqrt(12) * sum(lista);
end

