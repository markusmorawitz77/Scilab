function [x,y,z]=tore(theta,phi)
        R=1,r=0.2
        x=(R+r*cos(phi)).*cos(theta)
        y=(R+r*cos(phi)).*sin(theta)
        z=r*sin(phi)
endfunction
// calcul des facette 
phi=[0:0.4:2*3.2];
theta=[2*3.4:-0.2:0];
[x,y,z]=eval3dp(tore,theta,phi); 
// affichage de la surface 
clf;
F=gcf();F.color_map=hotcolormap(64);
subplot(221)
plot3d1(x,y,z)
E=gce();E.color_mode=1;
xtitle('color_mode=-1')
subplot(222)
surf(x,y,z)
E=gce();E.color_mode=1
xtitle('color_mode=1')
subplot(223)
surf(x,y,z)
E=gce();E.color_mode=0
subplot(224)
surf(x,y,z)
E=gce();E.color_mode=-1
xtitle('color_mode=-1')
// modification de l'angle de vue des 4 surfaces
F=gcf();F.children.rotation_angles=[40 135];
