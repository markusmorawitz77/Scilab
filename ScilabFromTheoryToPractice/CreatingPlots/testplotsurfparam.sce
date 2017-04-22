function [x,y,z]=torus(theta,phi)
        R=1,r=0.2
        x=(R+r*cos(phi)).*cos(theta)
        y=(R+r*cos(phi)).*sin(theta)
        z=r*sin(phi)
endfunction
// compute facets
phi=[0:0.2:2*3.2];
theta=[2*3.2:-0.2:0];
[x,y,z]=eval3dp(torus,theta,phi); 
// surface display 
clf;
subplot(221)
surf(x,y,z)
xtitle('surf')
subplot(222)
mesh(x,y,z)
xtitle('mesh')
subplot(223)
plot3d(x,y,z)
xtitle('plot3d')
subplot(224)
plot3d1(x,y,z)
xtitle('plot3d1')
F=gcf();
F.color_map=hotcolormap(32);
//  plot color of plot3d
F.children(2).children.color_mode=10;
// change the view angle of the 4 surfaces
F.children(1:2).rotation_angles=[80 135];
F.children(3:4).rotation_angles=[30 135];
