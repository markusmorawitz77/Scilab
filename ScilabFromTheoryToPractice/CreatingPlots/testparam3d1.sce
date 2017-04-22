function [x,y,z]=helix(t)
    x=cos(t)
    y=sin(t)
    z=t
endfunction
// compute coordinates of points 
t=[-5*%pi:0.02:5*%pi];
[x,y,z]=helix(t);
// display the curve
clf;
param3d(x,y,z,alpha=15,theta=50)
E=gce();E.foreground=5 // modify the curve's color 
// display points marked by a "O"
t=10*%pi*grand(30,1,'def')-5*%pi;
[x,y,z]=helix(t);
param3d1(x,y,list(z,-9),alpha=15,theta=50)
