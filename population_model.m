function [p_vals] = population_model(a, b, p_0, num_steps)

if ~(a > b && b > 0)
        warning('a>b>0 is not satisfied');
        p_vals = [0];
        return;
    end
    
    if p_0 < 0
        warning('p(0) is negative');
        p_vals = [0];
        return;
    end
    
    if ~(isnumeric(num_steps) && num_steps > 0 && floor(num_steps) == num_steps)
        warning('num_steps is negative');
        p_vals = [0];
        return;
    end

p_vals = zeros(1, num_steps + 1); 
p_vals(1) = p_0;  

    for k = 1:num_steps
        p_vals(k + 1) = p_vals(k) * (a / (b + p_vals(k)));
    end

end