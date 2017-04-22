//line 
X=[-2;4];Y=2*X-1;
// point scatter
x=4*grand(100,1,'def')-1;//x coordinates
noise=(2-abs(x-1)).*(2*rand(x)-1);
y=2*x-1+noise//y coordinates
//plot
clf;
plot(X,Y,'-r',x,y,'+k')
