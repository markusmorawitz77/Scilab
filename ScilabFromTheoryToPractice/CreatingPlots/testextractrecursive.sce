lines(10)  //to delete
clf;
plot();        // figure with two plots
F=gcf()        // handle Figure
A=gca()        // handle Axes child of F
F.children(1)  // equal to A
E=gce()        // handle Compound child of A
F.children(1).children(1)  // equal to E
