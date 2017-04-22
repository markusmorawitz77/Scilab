clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4),
// pentagon vertices 
t=[0:4]*2*%pi/5;
x=2*cos(t);
y=2*sin(t);
//1st pentagon centered at (2.5,2.5)
xfpoly(2.5+x,2.5+y)  // black background
E=gce();E.foreground=5;   // red edge
//2nd pentagon centered at (2.5,7.5)
xfpoly(2.5+x,7.5+y,5)  // red background
E=gce();E.line_style=3;   // edge is a black dotted line
//3rd pentagon centered at (7.5,2.5)
xfpoly(7.5+x,2.5+y,-2)  // polygon vertices
E=gce();E.mark_style=2;  // dotted line
//4th pentagon centered at (7.5,7.5)
xfpoly(7.5+x,7.5+y,0)  // 0=open polygon
E=gce();E.background=3;  // green background
