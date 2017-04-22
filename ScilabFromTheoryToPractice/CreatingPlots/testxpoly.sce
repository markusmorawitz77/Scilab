clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4)
// pentagon vertices 
t=[0:4]*2*%pi/5;
x=2*cos(t);
y=2*sin(t);
//1st pentagon center at  (2.5,2.5)
xpoly(2.5+x,2.5+y)  // open polygon
E=gce();E.foreground=5;   // red
//2nd pentagon center at (2.5,7.5)
xpoly(2.5+x,7.5+y,"lines",1)  // 1=closed polygon
E=gce();E.line_style=3;   // dotted line
//3rd pentagon centered at (7.5,2.5)
xpoly(7.5+x,2.5+y,"marks")  // polygon vertices
E=gce();E.mark_style=2;  // dotted line
//4th pentagon centered at (7.5,7.5)
xpoly(7.5+x,7.5+y,"lines",0)  // 0=open polygon
E=gce();E.thickness=3;  // line thickness 
