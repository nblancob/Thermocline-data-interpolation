function[z]=interpolacion_vandermonde(xx,yy)
    a=zeros(length(xx));
    for i=1:length(xx)
        for j=1:length(xx)
            a(i,j)=xx(i)^(j-1);
        end
    end
    z=a\yy';
end