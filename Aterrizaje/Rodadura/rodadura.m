function FV=rodadura(t,Y)
g=9.81;
W=145000*9.81;
rho=1.225;
Cl=0.049046;
Cd0=0.008537;
k=0.0501;
Cd=Cd0+k*Cl*Cl*16*3/(60.9*sqrt(1+(16*3/60.9)^2))
s=395.88;
mu=0.063;
FV(1,1)=g*(-mu-(rho*(Cd-mu*Cl)*Y(1)*Y(1)*s)/(2*W)); %velocidade
FV(2,1)=Y(1);        %Posición

%[t Y]= ode45('rodadura',[ 68],[0;600.05],'RelTol',1e-9,'AbsTol',1e-11)