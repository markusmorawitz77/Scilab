clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4),
//regular hexagon
xrpoly([5,5],6,4)
E=gce();
E.foreground=5;  // color of the red contour
E.thickness=3;    // contour thickness
//2nd smaller hexagon rotated 90 degrees
xrpoly([5,5],6,2,%pi/2)
