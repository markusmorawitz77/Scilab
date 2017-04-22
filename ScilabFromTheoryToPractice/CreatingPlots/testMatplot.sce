// grid definition
x=[1:5];y=[2:5]; 
// surface computation
[X,Y]=meshgrid(x,y);
Z=X+Y;
//surface display 
clf;
F=gcf();F.color_map=jetcolormap(10);
subplot(121)
Matplot(Z)
xtitle('Matplot(Z)')
subplot(122)
A=gca();A.data_bounds=[0,0;10,10];
A.axes_visible=["on" "on" "on"];
Matplot1(Z,[1,2,5,5])
xtitle('Matplot1(Z,[1,2,5,5])')
