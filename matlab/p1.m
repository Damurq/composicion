% % Aquí te dejo un ejemplo de código en Matlab que permite graficar una distribución de probabilidad específica, 
% % la cual se selecciona por medio del input del usuario y luego divide en una cantidad específica de áreas especificadas también por el usuario:

% % Selecciona la distribución de probabilidad
% dist = input('Ingresa la distribución de probabilidad a utilizar (normal, poisson, binomial, bernoulli): ', 's');

% % Define los parámetros de la distribución
% switch dist
%     case 'normal'
%         mu = 2
%         %input('Ingresa el valor esperado: ');
%         sigma = 1
%        % input('Ingresa la desviación estándar: ');
%         x = -5:0.1:5;
%         y = normpdf(x, mu, sigma);
%     case 'poisson'
%         lambda = input('Ingresa el parámetro lambda: ');
%         x = 0:20;
%         y = poisspdf(x, lambda);
%     case 'binomial'
%         n = input('Ingresa el número de intentos: ');
%         p = input('Ingresa la probabilidad de éxito: ');
%         x = 0:n;
%         y = binopdf(x, n, p);
%     case 'bernoulli'
%         p = input('Ingresa la probabilidad de éxito: ');
%         x = [0, 1];
%         y = [1-p, p];
%     otherwise
%         disp('Distribución no válida');
%         return;
% end
% % Gráfica la distribución de probabilidad
% area = trapz(x,y);
% fill([x fliplr(x)], [y 0*y], 'b');
% disp(max(x))
% disp(min(x))
% xlim([min(x) max(x)]);
% title(['Distribución de probabilidad ' dist]);
% xlabel('Valores de la variable aleatoria');
% ylabel('Probabilidad');

% % Divide la distribución en áreas específicas
% n_areas = input('Ingresa el número de áreas a dividir: ');
% xlimit = xlim;
% ylimit = ylim;
% for i = 1:n_areas
%     line([xlimit(1) xlimit(2)], [area/n_areas*i area/n_areas*i], 'Color', 'r', 'LineStyle', '--');
% end


% Ingresa la función de distribución de probabilidad
func = input('Ingresa la función de distribución de probabilidad: ','s');

% Define los límites de integración
xmin = input('Ingresa el límite inferior de integración: ');
xmax = input('Ingresa el límite superior de integración: ');

% Define el número de subáreas
n_areas = input('Ingresa el número de subáreas: ');

% Evalua la función en el intervalo especificado
x = linspace(xmin,xmax);
y = eval(func);

% Gráfica la función de distribución de probabilidad
area = trapz(x,y);
fill([x fliplr(x)], [y 0*y], 'b');
title('Función de distribución de probabilidad');
xlabel('Valores de la variable aleatoria');
ylabel('Probabilidad');
xlim([xmin xmax]);

% Divide el área bajo la curva en subáreas
for i = 1:n_areas
    line([xmin xmax], [area/n_areas*i area/n_areas*i], 'Color', 'r', 'LineStyle', '--');
end