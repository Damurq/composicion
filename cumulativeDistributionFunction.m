function output = cumulativeDistributionFunction(fun, value)
    variables = symvar(fun);
    I = int(fun,variables);
    var = symvar(I);
    output = I - subs(I, var, value);
end