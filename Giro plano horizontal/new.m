t=linspace(0,10,1000);
v=zeros(length(t),1);
giro=zeros(length(t),1);
vtheta=zeros(length(t),1);
vtang=zeros(length(t),1);
radio=zeros(length(t),1);
x=zeros(length(t),1);
y=zeros(length(t),1);
time=0;
for i=1:length(t)
    if i>1
        c=v(i-1);
    else
        c=0.8;
    end
        
    time=t(i);
    v(i)=newton(c,time,0.0003,1000);
    giro(i,1)=sqrt(2*6.67-v(i)^2-1/v(i)^2);
    radio(i,1)=v(i)*v(i)/sqrt(2*6.67*v(i)*v(i)-v(i)^4 -1);
    vtheta(i,1)=giro(i)*radio(i);
    vtang(i,1)=sqrt(v(i)^2-vtheta(i)^2);
    
end
angle = cumtrapz(t,giro);

for i=1:length(t)
    x(i)=radio(i)*cos(angle(i));
    y(i)=radio(i)*sin(angle(i));
end
plot(x,y)
    
