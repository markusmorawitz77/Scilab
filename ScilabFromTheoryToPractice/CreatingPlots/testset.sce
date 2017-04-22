clf;plot()                 // Scilab graphics command
F=gcf();                   // handle of associated figure
A=F.children(1);           // Axes of the last plot
E=A.children               // made up of 41 polylines 
H=E.children(2);           // one of the 41 curves 
H.thickness                // curve thickness
H.thickness=10;            // modifying H.thickness
H.thickness                // curve thickness is modified 

