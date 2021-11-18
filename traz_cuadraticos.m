function [abc]=traz_cuadraticos(x,y)
%calcula los coeficientes de los polinomios para interpolar
%los valores (x,y) con trazadores cuadraticos
n=length(x)-1; %numero de intervalos
m=zeros(3*n); %matriz
b=zeros(3*n,1); %vector de la derecha

    for i=1:n
        m(3*i-2,3*i-2:3*i)=[x(i)^2, x(i) , 1];
        b(3*i-2)=y(i);
        m(3*i-1,3*i-2:3*i)=[x(i+1)^2, x(i+1),1];
        b(3*i-1)=y(i+1);
        if i<n
            m(3*i, 3*i-2:3*i+2)=[2*x(i+1),1,0,-2*x(i+1),-1];
        end
        m(end,1)=1;
        a=m\b;
        abc=reshape(a,3,n);
    end

end