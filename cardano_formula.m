function x = cardano_formula(a, b, c)

    p = (3*b - a^2) / 3;
    q = (2*a^3) / 27 - (a*b) / 3 + c;
    
    D = (p/3)^3 + (q/2)^2;
    
    if D >= 0
        y1 = nthroot(-q/2 + sqrt(D), 3);
        y2 = nthroot(-q/2 - sqrt(D), 3);
        y = y1 + y2;
        x = y - a/3;
    else
        x = NaN;
        disp('Failed to find real root. (D<0)');
    end

end