// grid definition
x=[-1:0.1:1];y=x; 
// surface computation
[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
//surface display 
clf;
F=gcf();F.color_map=hotcolormap(64);
subplot(121)
// plots a surface in 3D
plot3d1(x,y,Z)  
// remove the facet plot
E=gce();E.color_mode=-1; 
// add the contour lines to the surface 
contour(x,y,Z,7,flag=[0 2 4])
xtitle('plot3d1+contour')
subplot(122)
// plot the surface in 2D
Sgrayplot(x,y,Z)
// add the contour lines to the surface 
contour(x,y,Z,7)
xtitle('Sgrayplot+contour')
