clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4),
// pentagon vertices
t=[0:4]*2*%pi/5;
x=2*cos(t)';
y=2*sin(t)';
X=[2.5+x 2.5+x 7.5+x 7.5+x];
Y=[2.5+y 7.5+y 2.5+y 7.5+y];
//edges of the four black pentagons
xpolys(X,Y,[1 1 1 1])  
E=gce();E.children.closed=1;  // closed boundary
E.children.thickness=3;      // thickness 
// 4 pentagons filled with color
xfpolys(X,Y,[2 3 5 7])  
