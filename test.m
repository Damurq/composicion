% f1_str = input("Ingrese la primera función en formato de cadena: ", "s");
% f2_str = input("Ingrese la segunda función en formato de cadena: ", "s");
% f1 = str2func(["@(x)" f1_str]);
% f2 = str2func(["@(x)" f2_str]);
n = 1000;
f1_str = @(x) sqrt(x)+3;
f2_str = @(x) 5-sqrt(1-x);
composition(n, f1_str, f2_str);