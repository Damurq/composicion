function inverse = inverseFunction(f)
    inverse = @(x) f(x)^-1;
end
