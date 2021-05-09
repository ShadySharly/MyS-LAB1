function root = newtonRaphson(polynomial, maxIter, tolerance, x0)
% Verificacion del numero de iteraciones generadas hasta cierto punto.
% En caso de alcanzar el numero maximo, se debvuelve la aproximacion actual
if maxIter == 0
    root = x0 - rem(x0, tolerance)
    return;
end

% Generacion de una nueva aproximación
fun = polynomial;             % Se asigna al polinomio de entrada como la funcion a aproximar
funDiff = diff(fun);          % Se determina la derivada de primer orden de la funcion

fun_eval = polyval(fun, x0);         % Se evalua el valor aproximado actual en la funcion
funDiff_eval = polyval(funDiff, x0); % Se evalua el valor aproximado actual en la derivada
xi = x0 - (fun_eval / funDiff_eval); % Se determina la siguiente aproximacion de la sucesion
error = abs(xi - x0);                % Se determina el error
%fprintf('%f\n', xi);                 % Se muestra la sucesion

%Verificacion del umbral de tolerancia
% En caso de que la diferencia entre dos sucesiones consecutivas sea menor 
% a la tolerancia, el algoritmos e detiene y retorna la nueva aproximación.
if error < tolerance        % Si el error calculado es menor al umbral establecido, se deja
    root = xi - rem(xi, tolerance)
    return;                 % de iterar y se devuelve la nueva aproximacion
end
    
maxIter = maxIter - 1;      % Se dsiminuye el contador de iteraciones en 1
x0 = xi;                    % Se asigna como aproximacion actual, a la generada anteriormente
newtonRaphson(polynomial, maxIter, tolerance, x0);  % Llamado recursivo con los nuevos parametros
end

