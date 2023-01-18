% Pedir al usuario ingresar los valores de la FDA
x = input('Ingresa los valores del eje x: ');
y = input('Ingresa los valores del eje y: ');

% Crear una función anónima para la distribución acumulada
FDA = @(x) interp1(x, y, x, 'previous', 'extrap');

% Pedir al usuario ingresar la cantidad de números aleatorios a generar
n = input('Ingresa la cantidad de números aleatorios a generar: ');

% Generar números aleatorios utilizando la función rand() y la FDA
u = rand(1, n); % Generar n números aleatorios entre 0 y 1
x_aleatorios = fzero(@(x) FDA(x) - u, x);

% Imprimir los números aleatorios generados
disp(x_aleatorios)
