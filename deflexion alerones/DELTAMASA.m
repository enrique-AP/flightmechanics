cl0=0.433246;
clalpha=3.551593
cm0=0.103476;
cmalpha=1.4209353;
cmdeltae=2.864;
W=linspace(9.8*140000,9.8*290000,400);
cldeltae=0.17757965
v=250;
deltae=linspace(100,250,100);
S=395.88;
rho=1.225;
for i=1:length(W);
    deltae(i)=(180/pi)*(cl0-clalpha*cm0/cmalpha-2*W(i)/(rho*v*v*S))/(clalpha*cmdeltae/cmalpha -cldeltae)
end

plot(W,deltae)