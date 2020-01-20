function y=dgg(x,t)
vr=263;
emax=18.81;
g=9.81;
tmax=6.67;
clmax=2.526292421;
clopt=0.394437776;
a=sqrt(2*tmax/(1+(clmax/clopt)^2));
vi=1;
y=-(2^(1/2)*emax*vr*(a + vi)*(a - x)*((a - vi)/((a + vi)*(a - x)) + ((a + x)*(a - vi))/((a + vi)*(a - x)^2)))/(2*g*(tmax*(clmax^2/clopt^2 + 1))^(1/2)*(a + x)*(a - vi));
end