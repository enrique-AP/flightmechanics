
function FV=planeo(t,Y)
g=9.81;
gamma=1.5*pi/180;
m=278626;
rho=1.225;
S=395.88;
C=8.356; %MAC
Cl=2*m*g/(rho*Y(3)*Y(3)*S);
Cd0=0.008537;
k=0.0501;
Cd=Cd0+k*Cl*Cl*16*Y(2)/(60.9*sqrt(1+(16*Y(2)/60.9)^2))
S=395.88;
FV(1,1)=Y(3)*cos(gamma); %Distancia horizontal
FV(2,1)=-Y(3)*sin(gamma);       %Altura
FV(3,1)=(-0.5*rho*Y(3)*Y(3)*S*Cd+m*g*sin(gamma))/m;        %Velocidade
end

%[t Y]= ode45('liftoff',[0 170],[80;0;0],'RelTol',1e-5,'AbsTol',1e-7)