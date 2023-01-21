function x_a = composition(n, F1, F2)
    % n: un entero que indica el número de veces que se debe realizar la composición de las funciones.
    % F1: una función que representa la primera función a utilizar.
    % F2: una función que representa la segunda función a utilizar.
    x_a = zeros(1, n);
    for i = 1:n
        R1 = rand();
        R2 = rand();
        A1 = 0.5;

        if R1 < A1
            %se usa F1
            x = F1(R1);
        else
            x = F2(R2);
        end

        x_a(i) = x;
    end

    subplot(2, 1, 1);
    plot(x_a);
    subplot(2, 1, 2);
    hist(x_a, 30);
end