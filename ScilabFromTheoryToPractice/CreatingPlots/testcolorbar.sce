// define a grid
x=[-1:0.1:1];y=x;
// surface computation
[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
//surface display 
clf;
F=gcf();F.color_map=jetcolormap(64);
surf(x,y,Z)
colorbar(min(Z),max(Z))
