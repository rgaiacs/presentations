function y = sum_vect(a, b)
    % This function return the sum of the vectors a and b.
    n = size(a, 1);
    for i = 1:n
        y(i) = a(i) + b(i);
    end
end
