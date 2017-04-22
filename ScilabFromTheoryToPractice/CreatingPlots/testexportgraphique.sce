mkdir('testexportgraphique'); //to delete
cd('testexportgraphique'); //to delete
clf()                  // clear the current graphics window
surf()                 // new figure inside the current window
F=gcf();               // figure handle
figure_id=F.figure_id  // graphics window number
xs2png(figure_id,'figure.png')  // export to png format
ls ('*.png')           // save inside the current directory
cd('..'); // <exec  bug to delete
rmdir('testexportgraphique'); // <exec bug to delete
