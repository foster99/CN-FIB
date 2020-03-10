function [vap,vep,it,residu] = potencia_inversa(A,x,kmax,tol)

invA = inv(A);

for k = 1:kmax
    x_pre = x;
    zk = invA*x;
    [~,j] = max(abs(zk));
    x = zk/zk(j);
    
    residu = norm(x - x_pre, 'inf');
    if (residu < tol) 
        break;
    end
end

vep = x;
vap = 1/zk(j);
it = k;
end

