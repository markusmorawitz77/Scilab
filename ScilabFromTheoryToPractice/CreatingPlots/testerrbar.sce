clf;  
ieee(2) // to warn of division by 0
// divide the interval into 125 points
x=linspace(0,2*%pi,125);
y1=x.*cos(x);
plot(x,y1,'-b')
// error margin
em=grand(x,'def');   // distance below
ep=grand(x,'def');   // distance above 
errbar(x,y1,em,ep)    // plotting bars
// error bar handle
E=gce();
E.type          // Segs
E.segs_color=color("blue")  // color blue
// second curve 
y2=%pi*sin(x)./x;
plot(x,y2,'-r')
// error margin
em=ones(x);ep=em;
errbar(x,y2,em,ep)    // plotting bars
E=gce();E.segs_color=color("red")  // color red
