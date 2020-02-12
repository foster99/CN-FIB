function [ea,er,ep] = funerror(x,y)
% Calcula el error absolut i el error relatiu

ea = abs(x-y);
er = ea/abs(y);
ep = er*100;
end

