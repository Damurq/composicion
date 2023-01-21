function inverse = inverseFunction(f)
    if ~isa(f, 'function_handle')
        error('El argumento debe ser una función.');
    end
    inverse = @(x) f(x)^-1;
end
