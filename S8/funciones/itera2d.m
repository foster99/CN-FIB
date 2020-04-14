function alpha = itera2d(G,F,Z,Nmax,tol)
k=0; 
tolZ=norm(Z);
FZ=F(Z(1),Z(2)); 
tolF= norm(FZ); 

while (k<Nmax && (tolF>tol || tolZ>tol))
        Zold=Z;
        Z=G(Z(1),Z(2));
        tolF=norm(F(Z(1),Z(2)));
        tolZ=norm(Z-Zold);
        k=k+1;
end
alpha=Z;
fprintf('\n')
disp(['solución = ',num2str(Z')]);
disp(['tolF = ',num2str(tolF)]);
disp(['tolZ = ',num2str(tolZ)]);
disp(['iteraciones = ',num2str(k)]);
fprintf('\n')
end