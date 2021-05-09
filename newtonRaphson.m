function root = newtonRaphson(polynomial, maxIter, tolerance, x0)

if maxIter == 0
    root = x0 - rem(x0, tolerance)
    return;
end

fun = polynomial;             % Se asigna al polinomio de entrada como la funcion a aproximar
funDiff = diff(fun);          % Se determina la derivada de primer orden de la funcion

fun_eval = polyval(fun, x0);         % Se evalua el valor aproximado actual en la funcion
funDiff_eval = polyval(funDiff, x0); % Se evalua el valor aproximado actual en la derivada
xi = x0 - (fun_eval / funDiff_eval); % Se determina la siguiente aproximacion de la sucesion
error = abs(xi - x0);                % Se determina el error
%fprintf('%f\n', xi);                 % Se muestra la sucesion

if error < tolerance        % Si el error calculado es menor al umbral establecido, se deja
    root = xi - rem(xi, tolerance)
    return;                 % de iterar y se devuelve la nueva aproximacion
end
    
maxIter = maxIter - 1;
x0 = xi;
newtonRaphson(polynomial, maxIter, tolerance, x0);
end

