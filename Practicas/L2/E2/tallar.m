function y=tallar(x,t)
    if (x==0), y=0; return; end
    e=fix(log10(abs(x)));
    if e>=0, e=e+1; end
    y=fix(x*10^(t-e))*10^(e-t);
return
