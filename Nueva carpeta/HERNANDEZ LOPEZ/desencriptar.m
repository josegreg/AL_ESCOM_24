function [S, polinomio] = desencriptar(seleccion, k)
    S = 0;
    n = size(seleccion, 1);
    
    for i = 1:n
        xi = seleccion(i, 1);
        yi = seleccion(i, 2);
        L = 1;
        for j = 1:n
            if i ~= j
                xj = seleccion(j, 1);
                L = L * (x - xj) / (xi - xj);
            end
        end
        S = S + yi * L;
    end
end
