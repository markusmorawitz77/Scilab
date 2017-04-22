colordef('black')        // plot curves on a black background
exec('testplot.sce',-1)
colordef('white')       // to revert to the default mode
//but you still need to redefine the background color as white
id_white=addcolor(name2rgb("white")/255);  // add white
F=gcf();
F.background=id_white;  // assign it to the background color 
sdf()                   // new default figure
