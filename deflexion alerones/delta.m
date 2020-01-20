cl0=0.433246;
clalpha=3.551593
cm0=0.103476;
cmalpha=1.4209353;
cmdeltae=2.864;
W=280000*9.8;
cldeltae=0.17757965
v=linspace(100,350,100);
deltae=linspace(100,250,100);
S=395.88;
rho=1.225;
for i=1:length(v);
    deltae(i)=(180/pi)*(cl0-clalpha*cm0/cmalpha-2*W/(rho*v(i)*v(i)*S))/(clalpha*cmdeltae/cmalpha -cldeltae)
end

plot(v,deltae)