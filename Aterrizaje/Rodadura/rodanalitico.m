clear all
mu=0.08;
a=2*145000/395.88;
b=0.008611601474344-mu*0.049046;
vi=60.05;
x=abs(a*log(mu/(mu-vi*vi*1.225*b/a))/(b*2*9.81*1.225));