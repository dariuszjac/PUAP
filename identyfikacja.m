function [x norma] = identyfikacja(GG)

dt=0.01;
t=0:dt:50;
[yk] = step(GG,t);
y=yk';
fun=@(x)(1-exp(-(t-x(2))/x(1))).*heaviside(t-x(2))-y;
lb = [0,0];
ub = [3000,200];
x0 = [1,0.5];
[x norma] = lsqnonlin(fun,x0,lb,ub);
    
end