clear all
V=linspace(0.7,1.3,100);
T=linspace(2,5,100);
Em=18.85;
f=zeros(length(T),length(T));
g=zeros(length(T),length(T));
for j=1:length(T);
    for i=1:length(V)
    
    f(j,i)=sqrt(2*T(j)-V(i)*V(i)-(V(i)*V(i))^-1); %Enter the Function here
    g(j,i)=V(i)*V(i)*(2*T(j)*V(i)*V(i))^-0.5;
         
    end
    
end
surf(T,V,f)
figure
surf(T,V,g)