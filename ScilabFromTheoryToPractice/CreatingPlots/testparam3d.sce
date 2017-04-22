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
