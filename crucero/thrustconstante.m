function FV=thrustconstante(t,Y)
S=395.88;
rho=0.3639;
cl=0.394437776;
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
Clopt=0.473622606;
Em=18.8598467;
thrust=280000*9.81/Em;
vri=sqrt(2*280000*9.81/(rho*S*Clopt));
v=vri*sqrt(thrust*Em/(280000*9.81)+(sqrt((thrust*Em/(280000*9.81))^2-(Y(1)/(280000*9.81))^2)));
M0=v/a0;


%%%%%%%%%%%%%%%%%%%%%%%%%%
theta0=1+ M0*M0*0.5*(gamma-1);
delta0=theta0^(gamma/(gamma-1));
tauc=pic^((gamma-1)/(gamma*np));
thetat=Tt4/Text;
taut=1-theta0*(tauc-1)/thetat;
pit=taut^(gamma/((gamma-1)/np));
T9fracT0=2*thetat*taut/(1+gamma);
P0fracP9=(((1+gamma)/2)^(gamma/(gamma-1)))/(delta0*pic*pit);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Tadim=M9*sqrt(T9fracT0)-M0+(1-P0fracP9)/(gamma*M9);
f=Cp*Text*(thetat-theta0*tauc)/h;
a0=sqrt(gamma*Rg*Text);
Isp=Tadim*a0/(f*g);
cew=abs(1/(Isp));
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


%%%%%%%%%%%%%%%%%%%%%%%%%%
theta0=1+ M0*M0*0.5*(gamma-1);
delta0=theta0^(gamma/(gamma-1));
tauc=pic^((gamma-1)/(gamma*np));
thetat=Tt4/Text;
taut=1-theta0*(tauc-1)/thetat;
pit=taut^(gamma/((gamma-1)/np));
T9fracT0=2*thetat*taut/(1+gamma);
P0fracP9=(((1+gamma)/2)^(gamma/(gamma-1)))/(delta0*pic*pit);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Tadim=M9*sqrt(T9fracT0)-M0+(1-P0fracP9)/(gamma*M9);
f=Cp*Text*(thetat-theta0*tauc)/h;
a0=sqrt(gamma*Rg*Text);
Isp=Tadim*a0/(f*g);
cew=abs(1/(Isp));


if Y(1)>130000*9.8
    FV(1,1)=-thrust*cew; %Peso
    FV(2,1)=v;        %Distancia
else
    FV(1,1)=0; %Peso
    FV(2,1)=0;
end
end

%[t Y]= ode45('alphaconstante',[0 1000],[100000;0])