function pi_approx = pi_sum_accel(Nmax, tol)
    
    sn = 0;  
    sn_prev = 0;
    
    for n = 1:Nmax
        sn_prev = sn;
        sn = sn + 1 / n^4;
        
        if n > 1 && abs(sn - sn_prev) < tol
            break;
        end
    end
    
    pi_approx = (90 * sn)^(1/4);
    
end