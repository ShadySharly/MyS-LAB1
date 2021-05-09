function root = newtonRaphson(polynomial, maxIter, tolerance, x0)

fun = polynomial;             % Se asigna al polinomio de entrada como la funcion a aproximar
funDiff = diff(fun);          % Se determina la derivada de primer orden de la funcion

for i = 1: maxIter                       % Se itera hasta el maximo de iteraciones definido
    fun_eval = polyval(fun, x0);         % Se evalua el valor aproximado actual en la funcion
    funDiff_eval = polyval(funDiff, x0); % Se evalua el valor aproximado actual en la derivada
    xi = x0 - (fun_eval / funDiff_eval); % Se determina la siguiente aproximacion de la sucesion
    error = abs(xi - x0);                % Se determina el error
    %fprintf('%f\n', xi);                  Se muestra la sucesion
    if error < tolerance        % Si el error calculado es menor al umbral establecido, se deja
        break                 % de iterar y se devuelve la nueva aproximacion
    end
    
    x0 = xi;                  % En otro caso, se asigna la nueva aproximacion como la actual
end

root = xi - rem(xi, tolerance);    % Se devuelve la raiz con los decimales definidos

end

