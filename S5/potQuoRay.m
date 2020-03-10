function [vap,vep,it,residu] = potQuoRay(A,x,kmax,tol)

invA = inv(A);

for k = 1:kmax
    x_pre = x;
    zk = invA*x;
    [~,j] = max(abs(zk));
    m = (zk' * x)/(x' * x);
    x = zk/m;
    
    residu = norm(x - x_pre, 'inf');
    if (residu < tol) 
        break;
    end
end

vep = x;
vap = 1/m;
it = k;
end

