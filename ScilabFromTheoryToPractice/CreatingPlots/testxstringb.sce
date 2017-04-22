// launch the graphics window 
clf;
plot2d(0,0,0,rect=[0,0,1,1])
xgrid(4)
// string to display 
alpha="abcdefghijklmnopqrstuvwxyz";
//size of rectangle bounding the string
rect=xstringl(0,0,alpha,3,5);
//display the rectangle 
x=0.1,y=0.6,w=rect(3),h=rect(4),
xrect(x,y+4*h,1.5*w,4*h)
//display the string 
xstringb(x,y,alpha,w*1.5,h*4)
E=gce();
E.font_size=5;
E.font_style=3;
E.box="on";
//size of the rectangle inside which the string is centered
rect=xstringl(0,0,alpha,3,3);
//display the rectangle 
x=0.25,y=0.25,w=rect(3),h=rect(4),
X=x+[0 w w 0]';Y=y+[0 0 h h]';
xrect(x,y+3*h,1.2*w,3*h)
//display the string 
xstringb(x,y,alpha,w*1.2,h*3)
E=gce();
E.font_size=3;
E.font_style=3;
E.box="on";
