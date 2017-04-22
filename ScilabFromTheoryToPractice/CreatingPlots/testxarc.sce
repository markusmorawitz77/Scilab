clf; 
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4)
//  1st ellipse - black
xfarc(0,4,2,4,64*180,64*180)
// second ellipse (circle since inside a square)
xarc(2,4,2,2,64*0,64*360) 
E=gce();
E.foreground=color("red"); //  red
// third ellipse (a circle since inside a square)
xarc(4,6,2,2,0,64*360) 
E=gce();
E.foreground=color("blue"); //  blue
E.line_style=3; //  dotted line
E.thickness=5;  //  thickness
// fourth ellipse 
xfarc(6,8,4,2,64*45,64*270)
E=gce();
E.background=7;
