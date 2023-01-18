function x_aleatorios = transformada_inversa(f, m, a, b, n)
    % Crear una función anónima para la distribución acumulada
    % FDA = @(x) integral(f, a, m);
% Crear un vector con los valores de la distribución acumulada
% FDA = arrayfun(f,m)
%     disp(FDA)
%     % Crear una función anónima para la distribución inversa
%     FDI = @(p) interp1(FDA, m, p);
%     disp(FDI)
%     % % Generar números aleatorios utilizando la función rand() y la FDI
%     r = rand(1, n); % Generar n números aleatorios entre 0 y 1
%     disp(r)

%     x_aleatorios = FDI(r);



% Crear un vector con los valores de la distribución acumulada
FDA = arrayfun(f,m);
% Eliminar duplicados y ordenar los puntos de muestra
[m,ind] = unique(m);
FDA = FDA(ind);
% Crear una función anónima para la distribución inversa
FDI = @(p) interp1(FDA, m, p);

% Generar números aleatorios utilizando la función rand() y la FDI
r = rand(1, n); % Generar n números aleatorios entre 0 y 1
x_aleatorios = FDI(r);

end