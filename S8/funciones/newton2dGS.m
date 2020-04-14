function alpha = newton2dGS(F,DF,Z,Nmax,tolF,tolZ)
% Mètode de Newton per a funcions de dues variables
k=0; cotaF=1; cotaZ=1;
FZ=F(Z(1),Z(2)); 
DFZ=tril(DF(Z(1),Z(2))); 
while (k<Nmax && (cotaF>tolF || cotaZ>tolZ))
    Zold=Z;
    Y=DFZ\(-FZ);
    Z=Zold+Y;
    cotaZ=norm(Y);
    DFZ=tril(DF(Z(1),Z(2))); 
    FZ=F(Z(1),Z(2));
    cotaF=norm(FZ);
    k=k+1;
end
alpha=Z;
% fprintf('\n')
% disp(['solución = ',num2str(Z')]);
% disp(['tolF = ',num2str(cotaF)]);
% disp(['tolZ = ',num2str(cotaZ)]);
% disp(['iteraciones = ',num2str(k)]);
% fprintf('\n')
end

