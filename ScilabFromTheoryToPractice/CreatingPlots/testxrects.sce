clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4)
// tracing "full" rectangles
rects1=[
2,2,2,2;
4,4,2,2;
6,6,2,2
8,8,2,2]';
xrects(rects1,[2:5])
// plotting rectangle contours
rects2=[
0,4,2,2;
2,6,2,2;
4,8,2,2
6,10,2,2]';
xrects(rects2,[-2:-1:-5])
E=gce();//compound entity
E.children.thickness=4;//thickness
