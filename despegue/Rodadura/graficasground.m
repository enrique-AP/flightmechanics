g=9.81;
W=290000*9.81;
rho=1.225;
Cl=0.049046;
Cl=Cl*16*3/(60.9*sqrt(1+(16*3/60.9)^2));
Cd0=0.008537;
k=0.0501;
Cd=Cd0+k*Cl*Cl*16*3/(60.9*sqrt(1+(16*3/60.9)^2))
s=395.88;
mu=0.05;
T=(mu+(rho*(Cd-mu*Cl)*Y(:,1).*Y(:,1)*s)/(2*W))*W +0.12*W;