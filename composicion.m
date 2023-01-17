% Ingresa la función de distribución de probabilidad (FDP)
FDP = input('Ingresa la función de distribución de probabilidad: ','s');

% Ingresa el número de variables aleatorias a generar
n = input('Ingresa el número de variables aleatorias a generar: ');

% Ingresa los parametros de la distribución
params = input('Ingresa los parametros de la distribución separados por comas: ');

% Genera la función inversa de la FDP
FDP_inv = inline(['fsolve(''' FDP '-x'',x,''Algorithm'',''brent'',''Options'',optimset(''TolX'',1e-6,''TolFun'',1e-6,''MaxIter'',10000,''MaxFunEvals'',10000),''params'',' num2str(params) ')'], 'x');

% Genera las variables aleatorias no uniformes
X = zeros(1,n);
for i = 1:n
    X(i) = FDP_inv(rand(1));
end

% Muestra el resultado
disp(X);
