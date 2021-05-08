
function [desviacion] = desviacionF (lista)
[M,N]=size(lista); % Se ocupara N como el largo de la lista
suma=0;%se inicializa en 0 para
for i=1 : N % Se recorrera la lista
    suma = lista(1,i)+suma; % se suman los valores para obtener el promedio
end
promedio=suma/N;% se obtiene el promedio
primer=0;
for j=1:N% se recorre la lista una vez mas
    primer= ((abs(lista(1,j)- promedio))^2)+primer; %se obtiene el la sumatoria de la formula
end
varianza=primer/N;%se obtiene la varianza
desviacion= sqrt(varianza); %se obtiene la desviacion
end