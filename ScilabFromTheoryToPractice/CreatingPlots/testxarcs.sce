clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4)
// plotting with full ellipses
arcs1=[
0,4,2,2,0,64*360;
2,6,2,2,0,64*270;
4,8,2,2,0,64*180
6,10,2,2,0,64*90]';
xarcs(arcs1,[2:5])
// plotting rectangle outlines
arcs2=[
2,2,2,2,0,64*360;
4,4,2,2,0,64*270;
6,6,2,2,0,64*180
8,8,2,2,0,64*90]';
xfarcs(arcs2,[5:-1:2])
