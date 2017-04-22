clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4)
// segments start
x1=2*ones(1,5)
y1=[1:2:9];
// segments end
x2=8*ones(1,5)
y2=[1 1 5 9 7];
// drawing the segments 
X=[x1;x2],Y=[y1;y2]
xsegs(X,Y,[1:5])
E=gce();
E.thickness=3;
E.mark_size=2;
E.mark_mode="on";
