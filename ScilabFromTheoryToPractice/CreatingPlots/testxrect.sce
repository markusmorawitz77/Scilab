clf;
plot2d(0,0,0,rect=[0,0,10,10],frameflag=3)
xgrid(4)  // grid  
xfrect(0,4,2,4)  // first rectangle
E=gce(); E.background=1;  // black inside
xrect(2,4,2,2)   // second rectangle (square)
E=gce(); E.foreground=5;  // red outline
xrect(4,6,2,2)   // third rectangle (square)
E=gce(); 
E.foreground=2;  // blue outline
E.line_style=3;  // dotted line
E.thickness=5;  // thickness
xfrect(6,8,4,2)  // fourth rectangle
E=gce(); E.background=7;  // yellow inside
