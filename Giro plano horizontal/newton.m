function y=newton(a,t,eps,niter)
fa=gg(a,t);
dfa=dgg(a,t);
for n=1:niter
    if abs(fa)<eps
        y=a;
        ;return
    else
        a=a-fa/dfa;
        fa=gg(a,t);
        dfa=dgg(a,t);  
    end
end