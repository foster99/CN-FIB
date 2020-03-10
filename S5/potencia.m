function [vap,vep,it,residu] = potencia(A,x,kmax,tol)


for k = 1:kmax
    x_pre = x;
    zk = A*x;
    [m,j] = max(abs(zk));
    x = (zk/m);
    
    residu = norm(x - x_pre, 'inf');
    if (residu < tol) 
        break;
    end
end

vep = x;
vap = zk(j);
it = k;
end

