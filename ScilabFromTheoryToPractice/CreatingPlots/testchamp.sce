clf; xgrid(1)  // grid
A=gca();A.isoview="on";  // isometric display
x=[0:10]';y=x;  // discretizing x,y data
fx=grand(11,11,'def');fy=grand(11,11,'def');
champ(x,y,fx,fy,rect=[0,0,10,10])
