% Metodo del rechazo para simulaciones de la materio IO3, basado en el libro Raul Coss
% El siguiente método es un procedimiento para generar
%números al azar de distribucion de probabilidad no uniforme.
clc
fprintf('-------------------------Metodo de rechazo---------------------------------\n');
% que necesitas para aplicar este algoritmo?
%1. Una funcion de distribucion, la cual vas a almacenar en el archivo fun
%2. Un rango de estudio [a,b]
%3. El valor de la moda M
x=input('Dar el rango de estudio:'); % para nosotros x tendra dos componentes asi x(1)=a y x(2)=b
M=input('Dar el valor de la moda:');
% Paso 1 Generar dos numeros uniformes R1 y R2
R1=rand(1);% numero aleatorio entre 0 y 1
R2=rand(2);
y=x(1)+(x(2)-x(1))*R1; % genera un numero aleatorio entre a y b, esta es la ecuacion semilla.
z=fun(y);
if R2<=z/M
  va=y;
else
   while R2> z/M

   R1=rand(1);
   R2=rand(2);
   y=x(1)+(x(2)-x(1))*R1;
   z=fun(y);


   end
va=y;
end
disp('la variable aleatoria es: ')
disp(va);
