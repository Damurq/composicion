function equation = lineEquation(m, point)
    if ~isnumeric(m) || ~isnumeric(point)
        error('Los argumentos deben ser números.');
    end
    x0 = point(1);
    y0 = point(2);
    equation = @(x) m*x + b;
end

