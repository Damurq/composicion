clc

% % Pedir al usuario ingresar la función de distribución de probabilidad
% f = input('Ingresa la función de distribución de probabilidad: ');
% % Pedir al usuario ingresar el intervalo de valores
% a = input('Ingresa el límite inferior del intervalo: ');
% b = input('Ingresa el límite superior del intervalo: ');
% % Pedir al usuario ingresar la cantidad de números aleatorios a generar
% n = input('Ingresa la cantidad de números aleatorios a generar: ');

% Ejemplo de uso de la función
f = @(x) x.^2; % Función de distribución de probabilidad
m = linspace(-1,1,100); % Vector con los valores del eje x de la distribución
a = -1; % Límite inferior del intervalo
b = 1; % Límite superior del intervalo
n = 10; % Cantidad de números aleatorios a generar

x_aleatorios = transformada_inversa(f, m, a, b, n);

disp(x_aleatorios)
ue