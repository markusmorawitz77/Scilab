// evaluate over a grid
x=[-1:0.2:1];y=x;[X,Y]=meshgrid(x,y);
Z=X.^2-Y.^2;
// change the color table
clf;
F=gcf();F.color_map=jetcolormap(8);
// surface display 
subplot(221)
surf(x,y,Z)
E=gce();E.color_mode=0;
xtitle('color_mode=0')
subplot(222)
surf(x,y,Z)
E=gce();E.color_mode=1;
xtitle('color_mode=1 (by default)')
subplot(223)
surf(x,y,Z)
E=gce();E.color_mode=-1;
xtitle('color_mode=-1')
subplot(224)
surf(x,y,Z)
E=gce();E.color_mode=4;E.color_flag=0;
xtitle('color_mode=4, color_flag=0')
