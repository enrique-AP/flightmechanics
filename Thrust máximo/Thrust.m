h1=linspace(0,11000,1100);
h2=linspace(11000,60000,4000);
d1=(1-h1.*22.558.*10.^-6).^4.2559;
d1=d1';
d2=0.2971*exp(-157.69*10^-6*(h2-11000));
d2=(d2.*d1(1100)^-1)';
Tmax=800000;
T1=Tmax*d1.^0.7
T1adim=T1*18.85/(200000*9.81); %Velocidad maxima de las maximas fuera de la tropopausa
T11max=T1(1100);

T2=T11max*d2.^0.2

h=[h1';h2'];
T=[T1;T2];
d=[d1.*1.225;d2.*0.3639];

W=linspace(130000*9.8,280000*9.8,1000)';
