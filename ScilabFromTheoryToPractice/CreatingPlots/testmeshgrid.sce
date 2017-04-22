// grid definition
x=[0:2],y=x, 
// surface calculation
[X,Y]=meshgrid(x,y)
Z=X-Y
//display the surface 
clf;
surf(x,y,Z)
