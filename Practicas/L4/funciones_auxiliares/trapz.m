function ret = trapz(f,a,b,h)

    sumatorio = 0;
    
    i = a + h;
    while i < b
        sumatorio = sumatorio + f(i);
        i = i + h;
    end
    
    ret = h/2 * (f(a) + 2*sumatorio + f(b));
    
end