function [ w ] = RK4( f,a,b,h,alpha )
% Metode d'EulerMillorat / Heun
t=[a:h:b];
N=length(t);
w(1)=alpha;
    for i=1:N-1
        k1 =h*f(t(i),w(i));
        k2= h*f(t(i)+h/2,w(i)+k1/2*h);
        k3= h*f(t(i)+h/2,w(i)+k2/2*h);
        k4= h*f(t(i)+h,w(i)+k3*h);
        w(i+1)=w(i)+(k1+2*k2+2*k3+k4)*h/6;
    end
end
