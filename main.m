function menu()
    while true
        clc
        fprintf('\nMenu de opciones\n');
        fprintf('1 - Introducir solo el intervalo donde se encuentra la base del triángulo\n');
        fprintf('2 - Introducir el intervalo donde se encuentra la base del triángulo y su altura\n');
        fprintf('3 - Salir\n');
        choice = input('Ingrese su opción: ');

        switch choice
            case 1
                fprintf('Ingrese el intervalo donde se encuentra la base del triángulo');
                a = input('Coordenada x de la punta izquierda del triángulo:');
                b = input('Coordenada x de la punta derecha del triángulo:');
                if ~isnumeric(a) || ~isnumeric(b)
                    fprintf('Los argumentos deben ser números.');
                elseif a <= 0 || b <= 0
                    fprintf('Los argumentos deben ser números positivos.');
                elseif b-a <= 0
                    fprintf('El valor de la primera coordenada debe ser menor que la segunda.');
                else
                    base = b-a
                    height = triangleHeight(base)
                    fprintf('La altura del triángulo es %f\n', height);
                    fprintf('El triángulo se dividirá en 2 areas\n');
                    half = (a + b) / 2;
                    stepByStep(a,half,b)
                end
            case 2
                fprintf('Ingrese el intervalo donde se encuentra la base del triángulo');
                a = input('Coordenada x de la punta izquierda del triángulo:');
                b = input('Coordenada x de la punta derecha del triángulo:');
                height = input('Ingrese la altura del triángulo: ');
                if ~isnumeric(a) || ~isnumeric(b)
                    fprintf('Los argumentos deben ser números.');
                elseif a <= 0 || b <= 0 || height <= 0
                    fprintf('Los argumentos deben ser números positivos.');
                elseif b-a <= 0
                    fprintf('El valor de la primera coordenada debe ser menor que la segunda.');
                else
                    area = triangleArea(base, height);
                    if area == 1
                        fprintf('El triángulo se dividirá en 2 areas\n');
                        half = (a + b) / 2;
                        stepByStep(a,half,b)
                    else
                        fprintf('El área de este triángulo es distinto de 1, por lo que no se puede proseguir.');
                    end
                end
            case 3
                fprintf('Saliendo...\n');
                return;
            otherwise
                fprintf('Opción inválida. Por favor, ingrese una opción válida.\n');
        end
    end
end
