// grid definition
x=[-1:0.1:1];y=x;
// surface computation
[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
//surface display
clf;
F=gcf();F.color_map=jetcolormap(8);
contourf(x,y,Z,7)
xtitle('contourf(x,y,Z,7)')
