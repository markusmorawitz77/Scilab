// define a grid
x=[-2:0.2:2];y=x;
// surface computation
[X,Y]=meshgrid(x,y);Z=X-Y;
// Z=%nan for a square in the center
indices=find((abs(X)<0.4)&(abs(Y)<0.4));
Z(indices)=%nan;
//surface display 
clf;
plot3d(x,y,Z)
