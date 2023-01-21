function output = stepByStep(a,b,c)

    % Paso 1: Dividimos el areá del triangulo a la mitad, lo que nos da como resultado dos triangulos de area = 0,5
    % Paso 2: Conseguir una función de distribución de probabilidad para cada Area.
    %triangulo izquierdo
    %calculamos la altura
    leftheight = triangleHeight(b-a);
    %calculamos la pendiente
    leftM = (leftheight-0)/(b-a);
    %calculamos una función de distribución de probabilidad con la ecuación punto pendiente
    leftFDP = lineEquation(leftM,[b,leftheight]);

    %triangulo derecho
    %calculamos la altura
    rightheight = triangleHeight(c-b);
    %calculamos la pendiente
    rightM = (0-rightheight)/(c-b);
    %calculamos una función de distribución de probabilidad con la ecuación punto pendiente
    rightFDP = lineEquation(rightM,[b,rightheight]);

    % Paso 3: Calculamos la función de distribución de probabilidad acumulada para cada función de distribución de probabilidad
    leftCDF = cumulativeDistributionFunction(leftFDP,a);
    rightCDF = cumulativeDistributionFunction(rightFDP,b);

    % Paso 4: calculamos la inversa de las funciones de distribución de probabilidad
    leftInverse = inverseFunction(leftCDF);
    rightInverse = inverseFunction(rightCDF);

    % Paso 5: calcular los números aleatorios
    n = input('Ingrese la cantidad de variables aleatorias no uniformes que desea calcular: ');
    output = composition(n, leftInverse, rightInverse)
end