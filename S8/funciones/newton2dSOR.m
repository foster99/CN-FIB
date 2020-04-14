function alpha = newton2dSOR(F,DF,Z,Nmax,tolF,tolZ,rho)
% Mètode de Newton per a funcions de dues variables
k=0; cotaF=1; cotaZ=1;
FZ=F(Z(1),Z(2)); 

AUX = DF(Z(1),Z(2));
J = diag(diag(AUX));
G = tril(AUX);
DFZ = rho*J + G; 

while (k<Nmax && (cotaF>tolF || cotaZ>tolZ))
    Zold=Z;
    Y=DFZ\(-FZ);
    Z=Zold+Y;
    cotaZ=norm(Y);
    
    AUX = DF(Z(1),Z(2));
    J = diag(diag(AUX));
    G = tril(AUX);
    DFZ = rho*J + G; 

    FZ=F(Z(1),Z(2));
    cotaF=norm(FZ);
    k=k+1;
end
alpha=Z;
% fprintf('\n')
% disp(['solución = ',num2str(Z')]);
% disp(['RHO = ',num2str(rho)]);
% disp(['tolF = ',num2str(cotaF)]);
% disp(['tolZ = ',num2str(cotaZ)]);
% disp(['iteraciones = ',num2str(k)]);
% fprintf('\n')
end

