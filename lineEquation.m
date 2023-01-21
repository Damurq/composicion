function equation = lineEquation(m, point)
    %m: un número que representa la pendiente de la recta.
    %point: un arreglo con dos elementos que representa un punto en el plano cartesiano.
    if ~isnumeric(m) || ~isnumeric(point)
        error('Los argumentos deben ser números.');
    end

    x0 = point(1);
    y0 = point(2);
    aux_equation = sprintf('%f*x + %f', m, y0 - m*x0);
    equation = str2sym(aux_equation);
end
