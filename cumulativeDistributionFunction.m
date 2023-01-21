function output = cumulativeDistributionFunction(fun, value)
    variables = symvar(fun);
    I = int(fun,variables);
    output = I - subs(I, variables, value);
end