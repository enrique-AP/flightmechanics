
[t Y]= ode23('alphaconstante',[0:100:63000],[278626*9.81;0],'RelTol',1e-5,'AbsTol',1e-7);
S=395.88;
rho=0.3639;
clopt=0.394437776;
%cl=clopt/(sqrt(3)); %Rango máximo
cl=clopt;   %Máxima autonomía
gamma=1.4;
np=1;
pic=40;
Tt4=1100;
Text=220;
M9=1;
h=43*10^6;
Cp=1050;
g=9.8;
Rg=287;
a0=sqrt(gamma*Rg*Text);
v=zeros(length(t),1);
for i=1:length(t)
    v(i)=sqrt(2*Y(i,1)/(rho*S*cl));
end
M0=v/a0;


%%%%%%%%%%%%%%%%%%%%%%%%%%
theta0=1+ M0.*M0*0.5*(gamma-1);
delta0=theta0.^(gamma/(gamma-1));
tauc=pic^((gamma-1)/(gamma*np));
thetat=Tt4/Text;
taut=1-theta0*(tauc-1)/thetat;
pit=taut.^(gamma/((gamma-1)/np));
T9fracT0=2*thetat*taut/(1+gamma);
P0fracP9=(((1+gamma)/2).^(gamma/(gamma-1)))/(delta0.*pic.*pit);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Tadim=M9*T9fracT0.^0.5-M0+(1-P0fracP9')/(gamma*M9);
f=Cp*Text*(thetat-theta0*tauc)/h;
a0=sqrt(gamma*Rg*Text);
Isp=Tadim.*a0.*f.^-1/g;
cew=abs(1.*(Isp).^-1);
cd=-0.0001*cl^6+0.00007*cl^5-0.0012*cl^4-0.0002*cl^3+0.0613*cl^2+0.0109;
thrust=abs(0.5*rho.*v.*v*S.*cd);