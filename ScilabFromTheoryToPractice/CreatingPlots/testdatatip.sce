clf;  
ieee(2)  // to warn of division by 0 
x=[0:0.02:2*%pi];
y1=cos(x);y2=sin(x);y3=-sin(x.^2)./x;
plot(x,y1,'-b',x,y2,'-g',x,y3,'-r')
E=gce();
// datatip for the first curve
P1=E.children(1);
T=datatipCreate(P1,100);
// coordinates of 100th point 
x(100),y3(100)
// datatip for the second curve
P2=E.children(2);
T=datatipCreate(P2,[x(200),y2(200)]);
T.type      // datatip handle 
T.children  // Polyline and Text

