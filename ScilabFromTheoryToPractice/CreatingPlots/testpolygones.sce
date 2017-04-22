clf;
plot2d(0,0,0,rect=[-1.5,-1.5,1.5,1.5],frameflag=3)
xgrid(4),
// drawing a contour
t=[0:0.02:2*%pi]';
r=1+0.2*sin(10*t);
x=r.*cos(t);
y=r.*sin(t);
xfpoly(x,y,5) 
A=gca();A.isoview="on";  // isometric scale
