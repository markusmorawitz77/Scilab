lines(10)//to delete
plot();
F=gcf();       //  handle figure
A=gca();       //  handle axes
F.children(1)  //  égal à A
E=gce()        //  handle Compound
A.children(1)  //  égal à E
P=E.children(1)  //  handle Polyline
A.children(1).children(1)  // égal à E
