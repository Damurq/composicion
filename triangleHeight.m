function height = triangleHeight(base)
    if ~isnumeric(base) || base <= 0
        error('El argumento debe ser un número positivo.');
    end
    height = 2 / base;
end