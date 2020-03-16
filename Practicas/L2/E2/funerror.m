function [ea,er,ep] = funerror(x,y)
% Calcula el error absolut, relatiu i percentual.

ea = abs(x - y);
er = ea./abs(y);
ep = er.*100;
end

