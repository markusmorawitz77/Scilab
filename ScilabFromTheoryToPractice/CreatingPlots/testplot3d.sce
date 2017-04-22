function [x,y,z]=torus(theta,phi)
        R=1,r=0.2
        x=(R+r*cos(phi)).*cos(theta)
        y=(R+r*cos(phi)).*sin(theta)
        z=r*sin(phi)
endfunction
// compute facets
phi=[0:0.1:2*3.15];
theta=[2*3.16:-0.1:0];
[x,y,z]=eval3dp(torus,theta,phi); 
// surface display  
clf;
subplot(221)
plot3d(x,y,z)
xtitle('plot3d')
subplot(222)
plot3d1(x,y,z)
xtitle('plot3d1')
subplot(223)
plot3d2(x,y,z)
xtitle('plot3d2')
subplot(224)
plot3d3(x,y,z)
xtitle('plot3d3')
// change the view angle of the 4 surfaces
F=gcf();F.children.rotation_angles=[80 45];
