function [coordenadas, polinomio] = encriptar(k, n, S)
    a = randi([1, 100], 1, k-1);
    a0 = S;

    coeficientes = [a, a0];
    
    syms x;
    polinomio = 0;
    for i = 1:k-1
        polinomio = polinomio + coeficientes(i) * x^(k-i);
    end
    polinomio = polinomio + coeficientes(k);
    coordenadas = zeros(n, 2);
    for i = 1:n
        p_i = 0;
        for j = 1:k-1
            p_i = p_i + a(j) * i^(k-j);
        end
        p_i = p_i + a0;
        coordenadas(i, :) = [i, p_i];
    end
end
