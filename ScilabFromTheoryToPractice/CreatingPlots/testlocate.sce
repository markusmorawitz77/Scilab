clf;
plot2d(0,0,0,rect=[0,0,1,1])
xgrid(4)
//click inside the graphics window three times
X=locate(3)
// plot the corresponding polygon
xfpolys(X(1,:)',X(2,:)',5) 
// display the coordinates of the 5 points 
txt=['List of the triangle''s three points:';'';
'P_'+string([1:3]')+'=('+string(X(1,:)')+','+string(X(2,:)')+')']
xstring(0.5,0.1,txt)
E=gce();
E.font_size=5;
E.font_style=3;
