
function FV=liftoff(t,Y)
g=9.81;
gamma=14*pi/180;
W=290000*9.81;
rho=1.225;
Cl=0.049046;
c=2; %Constante de aceleración
C=8.356; %MAC
Cl=Cl*16*Y(3)/(60.9*sqrt(1+(16*Y(3)/60.9)^2));
Cd0=0.008537;
k=0.0501;
Cd=Cd0+k*Cl*Cl*16*Y(3)/(60.9*sqrt(1+(16*Y(3)/60.9)^2))
S=395.88;
mu=0.05;
FV(1,1)=c; %velocidade
FV(2,1)=Y(1)*cos(gamma);        %Posición en x
FV(3,1)=Y(1)*sin(gamma);        %Altura
end

%[t Y]= ode45('liftoff',[0 170],[80;0;0],'RelTol',1e-5,'AbsTol',1e-7)