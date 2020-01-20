clear all
V=linspace(0.3,1.3,100);
T=6.67;
Em=18.85;
f=zeros(length(V),1);
g=zeros(length(V),1);
for i=1:length(V)
    
    f(i)=Em*V(i)^3 *(1+sqrt(1-(2*T*V(i)-1-V(i)^4)/(Em*Em*V(i)^4))); %Enter the Function here
    g(i)=real(asin(Em*V(i)*V(i)*(1-sqrt(1-(2*T*V(i)-1-V(i)^4)/(Em*Em*V(i)^4)))));
end


%Linealizada
TT=linspace(2,5,100);
fl=zeros(length(V),length(TT));
gl=zeros(length(V),1);
for j=1:length(TT);
    for i=1:length(V)
    
    fl(j,i)=Em*V(i)^3 *(1-sqrt(1-(2*TT(j)*V(i)-1-V(i)^4)/(Em*Em*V(i)^4))); %Enter the Function here
    fll(j,i)=Em*V(i)^3 *(1+sqrt(1+(2*TT(j)*V(i)-1-V(i)^4)/(Em*Em*V(i)^4)));
    gg(j,i)=asin(Em*V(i)*V(i)*(1-sqrt(1-(2*TT(j)*V(i)^2-1-V(i)^4)/(Em*Em*V(i)^4))));
    ggg(j,i)=asin(Em*V(i)*V(i)*(1+sqrt(1-(2*TT(j)*V(i)*V(i)-1-V(i)^4)/(Em*Em*V(i)^4))));
        
  
    end
    
end
% figure
surf(TT,V,gg)
%hold on
figure
surf(TT,V,fl)
a=max(max(fll))
