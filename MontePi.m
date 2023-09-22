function y = MontePi(n)
    inside_circle = 0;

    for i = 1:n
        x = rand();
        y = rand();

        if x^2 + y^2 <= 1
            inside_circle = inside_circle + 1;
        end
    end
% pi_approx is the approxation of pie
    pi_approx = 4 * inside_circle / n;
    t = abs(pi - pi_approx); % t is the absolute error due pie approximation
    rel_error = t / pi;      % rel_error is the relavative error
end
