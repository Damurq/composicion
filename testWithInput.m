n = input("Número de variables aleatorias no uniformes a generar ");
f1_str = input("Ingrese la primera función en formato de cadena: ", "s");
f2_str = input("Ingrese la segunda función en formato de cadena: ", "s");
f1_str = str2sym(f1_str);
f2_str = str2sym(f2_str);

composition(n, f1_str, f2_str);