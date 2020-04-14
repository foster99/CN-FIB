function alpha = newton2dMOD(F,DF,Z,Nmax,tolF,tolZ,fixed_it)
% Mètode de Newton per a funcions de dues variables
k=0; cotaF=1; cotaZ=1;
FZ=F(Z(1),Z(2)); 
DFZ=DF(Z(1),Z(2)); 
while (k<Nmax && (cotaF>tolF || cotaZ>tolZ))
    Zold=Z;
    Y=DFZ\(-FZ);
    Z=Zold+Y;
    cotaZ=norm(Y);
    
    k=k+1;
    if mod(k,fixed_it) == 0
        DFZ=DF(Z(1),Z(2));
    end
    FZ=F(Z(1),Z(2));
    cotaF=norm(FZ);
end
alpha=Z;
% fprintf('\n')
% disp(['solución = ',num2str(Z')]);
% disp(['tolF = ',num2str(cotaF)]);
% disp(['tolZ = ',num2str(cotaZ)]);
% disp(['iteraciones = ',num2str(k)]);
% fprintf('\n')
end

