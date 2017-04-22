// launch the graphics window 
clf;
plot2d(0,0,0,rect=[0,0,1,1])
xgrid(4)
// the string to display 
alpha="abcdefghijklmnopqrstuvwxyz"
//Courier font, black
xstring(0.1,0.25,alpha)
E=gce()
E.font_size=1
E.font_style=0
E.font_foreground=color("black")
//Symbol font, blue, boxed
xstring(0,0,alpha,0,1)
E=gce()
E.font_size=4
E.font_style=1
E.font_foreground=color("blue")
//Times font, black, slanted
xstring(0.2,0.5,alpha,20)
E=gce()
E.font_size=5
E.font_angle=20
E.font_style=2
E.foreground=2
//Times font, Bold over red background
xstring(0.3,0.7,alpha,340)
E=gce()
E.font_size=3
E.font_style=4
E.box="on"
E.fill_mode="on"
E.background=5
