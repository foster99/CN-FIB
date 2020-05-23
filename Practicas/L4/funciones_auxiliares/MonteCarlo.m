function integral = MonteCarlo(f,ax,bx,ay,by,n,make_plot)

if nargin == 6
    make_plot = false;
end


% el rango de X tiene que ser el dominio de la integral
% el rango de y tiene que ser el recorrido de f en el intervalo de x

count=0;

if make_plot
    P = zeros(n,2);
    for k=1:n
        x = (bx-ax)*rand + ax;
        y = (by-ay)*rand + ay;
        if y <= f(x) 
            count = count+1;
            P(k,:) = [x,y];
        end
    end
    
    t = ax:0.05:bx;
    yt = f(t);
    plot(P(:,1),P(:,2),'.',t,yt,'r','LineWidth',2)
    
else
    for k=1:n
        x = (bx-ax)*rand + ax;
        y = (by-ay)*rand + ay;
        if y <= f(x) 
            count = count+1;
        end
    end
end

integral = count/n;

end

