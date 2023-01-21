function area = triangleArea(base, height)
    if ~isnumeric(base) || ~isnumeric(height)
        error('Los argumentos deben ser números.');
    elseif base <= 0 || height <= 0
        error('Los argumentos deben ser números positivos.');
    end
    area = (base * height) / 2;
end