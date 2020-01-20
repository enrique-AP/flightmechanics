g=9.81;
gamma=14*pi/180;
W=290000*9.81;
rho=1.225;
Cl=0.049046;
c=2; %Constante de aceleración
C=8.356; %MAC
Cd0=0.008537;
k=0.0501;
S=395.88;
mu=0.05;
[t Y]= ode45('liftoff',[0 40],[80;0;3],'RelTol',1e-5,'AbsTol',1e-7)
Cl=Cl*16*Y(3)/(60.9*sqrt(1+(16*Y(3)/60.9)^2));
Cd=Cd0+k*Cl*Cl*16*Y(3)/(60.9*sqrt(1+(16*Y(3)/60.9)^2));
T=zeros(length(t),1);

for i=1:length(T)
    
    T(i)=0.5*rho*S*Y(i,1).*Y(i,1)*((Cd0+k*Cl^2))  +W*sin(gamma)+0.1*W/g;
end