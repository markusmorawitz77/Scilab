clf; xgrid(4)  // grid
A=gca();A.isoview="on";  // isometric display
//choose a different color table 
F=gcf();F.color_map=jetcolormap(64)
//two functions for vector fields
function [u]=converge(t,x)
    u(1)=-x(1)
    u(2)=-x(2)
endfunction
function [u]=rotation(t,x)
    u(1)=-x(2)
    u(2)=x(1)
endfunction
//plot the vector fields
x=[-4:4]';y=x;
rect=[-4 -4 4 4]
//vector field with current color table 
fchamp(converge,0,x,y,rect=rect)
E=gce();E.colored="on";
//vector field in black
fchamp(rotation,0,x,y,rect=rect)
