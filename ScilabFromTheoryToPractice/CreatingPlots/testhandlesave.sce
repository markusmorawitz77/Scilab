clf;                    // clear the window
surf()                  // a figure
F=gcf();                // handle of current figure 
save('figure.sav','F')  // save F inside a file
delete(F)               // delete the current window
load('figure.sav')      // load variable F
// the graphics window reopens and displays figure F
