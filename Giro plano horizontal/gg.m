function y=gg(x,t)
vr=263;
emax=18.81;
g=9.81;
tmax=6.67;
clmax=2.526292421;
clopt=0.394437776;
a=sqrt(2*tmax/(1+(clmax/clopt)^2));
vi=1;  %Velocidade inicial do avión
y=t-vr*emax*log((x+a)*(vi-a)/((x-a)*(vi+a)))/(g*sqrt(2*tmax*(1+(clmax/clopt)^2)));
end

