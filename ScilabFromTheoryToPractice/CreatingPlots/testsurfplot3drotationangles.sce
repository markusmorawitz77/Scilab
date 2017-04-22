function [x,y,z]=torus(theta,phi)
        R=1,r=0.2
        x=(R+r*cos(phi)).*cos(theta)
        y=(R+r*cos(phi)).*sin(theta)
        z=r*sin(phi)
endfunction
// compute facets
phi=[0:0.1:2*3.15];
theta=[2*3.16:-0.1:0];
[x,y,z]=eval3dp(tore,theta,phi); 
// surface display 
clf;
subplot(121)
surf(x,y,z)
xtitle('surf')
subplot(122)
plot3d1(x,y,z)
xtitle('plot3d')
// same view angles
F=gcf();
F.children.rotation_angles=[80 100];
// change the color table
F.color_map=hotcolormap(64)
