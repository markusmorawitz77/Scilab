plot()     // figure 0
F0=gcf();  // figure 0 handle
A=gca();   // axes handle of figure 0
winsid() 
F1=scf(1);   // generate an empty figure 1
delete(A)    // delete part of figure 0
winsid()
surf()       // plot inside figure 1
clf(0)       // erase figure 0
winsid()
delete(F0)   // delete figure 0
winsid()
delete(F1)   // delete figure 1
winsid()     // no more figures
F1          // cannot access handle F1 anymore
