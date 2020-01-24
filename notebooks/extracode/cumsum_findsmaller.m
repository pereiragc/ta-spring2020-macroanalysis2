% Tangled by intro_matlab_solutions.org

function jj = cumsum_findsmaller(u, cum_p)
    jj = 0;
    is_lower = false;
    while ~is_lower    % continue until is_lower becomes true
        jj = jj + 1;
        is_lower = (u <= cum_p(jj)); % logical variable: either 0 or 1
    end
end
