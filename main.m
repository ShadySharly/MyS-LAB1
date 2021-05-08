
x=0:0.01:15*pi;%Creacion de puntos para apartado 3.1 parte 1
x2=-10:0.05:10;% Creacion de puntos para apartdado 3.1 parte 2
%declaracion de a(x), b(x) y c(x) 
a=(6*log2(5*x+15)/log2(4))-log2(2*x);
b=sin(6*log10(2*x+9))+cos(2*log(x+16));
c=2*exp(2*x2)+3;
% Graficas 
% a(x)
figure(1)
plot(x,a,'r*')
title("Grafica a(x)")
xlabel('x')
ylabel('(6*log2(5*x+15)/log2(4))-log2(2*x)')
%b(x)
figure(2)
plot(x,b,'g+')
title("Grafica a(x)")
xlabel('x')
ylabel('sin(6*log10(2*x+9))+cos(2*log(x+16))')
%a(x) y b(x)
figure(3)
hold on
plot(x,a,'r*')
plot(x,b,'g+')
legend(["a(x)","b(x)"])
title("Grafica a(x) y b(x)")
xlabel('x')
ylabel('a(x) y b(x)')
hold off
%c(x) escala normal
figure(4)
plot(x2,c,'g--')
grid on 
title("Grafica c(x) escala normal")
xlabel('x')
ylabel('2*exp(2*x2)+3')
%c(x) escala logaritmica
figure(5)
semilogy (x2,c,'r--')
grid on 
title("Grafica c(x) escala logaritmica")
xlabel('x')
ylabel('2*exp(2*x2)+3')
% Parte 2 
%desviacion estandar
desviacion=desviacionF([1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0]);



