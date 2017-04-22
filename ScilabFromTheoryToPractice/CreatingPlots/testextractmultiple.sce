lines(10)  //to delete
clf;
plot();        // figure with two plots
F=gcf()        // handle Figure
A=F.children(2)  // handle Axe 
// A has three children 
F.children(2).children
//  Three children of type Polyline
F.children(2).children.children.type 
// get the three colors of the Polylines 
F.children(2).children.children.foreground  
// get only the last two colors 
F.children(2).children.children(1:2).foreground
