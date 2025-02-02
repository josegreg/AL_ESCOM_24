function [indices, seleccion] = selecciona_k_n(coordenadas, k)
    indices = randperm(size(coordenadas, 1), k);
    seleccion = coordenadas(indices, :);
end
