% f1_str = input("Ingrese la primera función en formato de cadena: ", "s");
% f2_str = input("Ingrese la segunda función en formato de cadena: ", "s");
% f1_str = str2sym(f1_str);
% f2_str = str2sym(f2_str);

% n: un entero que indica el número de veces que se debe realizar la composición de las funciones.
n = 1000;
% f1_str: una función que representa la primera función a utilizar.
f1_str = str2sym("sqrt(x)+3");
% f2_str: una función que representa la segunda función a utilizar.
f2_str = str2sym("5-sqrt(1-x)");
composition(n, f1_str, f2_str);