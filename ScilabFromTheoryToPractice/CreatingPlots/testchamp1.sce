clf; xgrid(1)  // grid
A=gca();A.isoview="on";  // isometric display
x=[0:10]';y=x;  // discretizing x,y data
fx=grand(11,11,'def');fy=grand(11,11,'def');
champ1(x,y,fx,fy,rect=[0,0,10,10])
//choose a different color table
F=gcf();F.color_map=jetcolormap(64)
