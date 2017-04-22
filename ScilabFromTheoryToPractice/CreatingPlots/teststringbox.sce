// launch the graphics window 
clf;
plot2d(0,0,0,rect=[0,0,1,1])
xgrid(4)
// first example
txt="the formula below is lopsided!"
xstring(0.1,0.75,txt)
E=gce();
E.font_size=5;
E.font_style=3;
E.box="on";
rect=xstringl(0.1,0.75,txt,3,5)
corners = stringbox(txt,0.1,0.75)
//  second example
formula='${\pi^2\over 6}=\sum_{n=1}^\infty {1\over n^2}$';
xstring(0.4,0.25,formula)
E=gce();
E.font_angle=20;
E.font_size=5;
E.box="on";
rect=xstringl(0.4,0.25,formula)
corners = stringbox(E)
