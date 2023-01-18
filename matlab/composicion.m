% Define el número de variables aleatorias a generar
n = 10000;

% Genera dos variables aleatorias uniformes
u1 = rand(n,1);
u2 = rand(n,1);

% Utiliza la transformación inversa para obtener una variable aleatoria normal
x = sqrt(-2*log(u1)).*cos(2*pi*u2);

% Verifica la distribución de la variable aleatoria generada
hist(x,50);

% En este ejemplo, se generan dos variables aleatorias uniformes u1 y u2 utilizando la función rand de Matlab.
%  Luego, se utiliza la transformación inversa de la función de densidad de probabilidad de la distribución normal
%   para obtener la variable aleatoria x con distribución normal. 
%   Finalmente, se utiliza la función hist para verificar que la distribución de la variable aleatoria generada sea similar a 
%   una distribución normal.


