//différents types de handles
//***************************
// les handles de lignes 
//***************************
//Polyline
clf; plot();E=gce();E.children(1).type
clf; param3d();E=gce();E.type
clf; param3d1();E=gce();E.type
clf; plot2d();E=gce();E.children(1).type
clf; plot2d2();E=gce();E.children(1).type
clf; plot2d3();E=gce();E.children(1).type
clf; plot2d4();E=gce();E.children(1).type
clf; histplot();A=gca();E=A.children(2);E.type
//Champ
clf; champ();E=gce();E.type
clf; champ1();E=gce();E.type
//Arc
clf; xarcs([0;1;1;1;0;64*180]);E=gce();E.children(1).type
clf; xfarcs([0;1;1;1;0;64*180]);E=gce();E.children(1).type
//Rectangle
clf; xrect([0,1,1,1]);E=gce();E.type
clf; xrects([0;1;1;1],5);E=gce();E.children(1).type
clf; xfrect([0,1,1,1]);E=gce();E.type
//Segs
clf; xarrows([0,0],[1,1]);E=gce();E.type
clf; xsegs([0,0],[1,1]);E=gce();E.type
//***************************
//  les handles de Surfaces
//***************************
//Fac3d
clf; surf();E=gce();E.type
clf; hist3d();E=gce();E.children(1).type
//plot3d
clf; fplot3d();E=gce();E.type
clf; plot3d();E=gce();E.type
clf; plot3d1();E=gce();E.type
//Grayplot
clf; grayplot();E=gce();E.type
clf; fgrayplot();E=gce();E.type
//Fec
clf; Sgrayplot();E=gce();E.children(1).children(1).type
clf; Sfgrayplot();E=gce();E.children(1).children(1).type
//Matplot
clf; Matplot();E=gce();E.children(1).type
clf; Matplot1();E=gce();E.children(1).type
//***************************
// Les handles de textes
//***************************
//Text
clf; xstring(0,0,'abcde');E=gce();E.type
clf; plot2d();legends('courbe',5,1);E=gce();E.children(1).type
//Legends
clf; plot2d();A=gca();legend(A,'f','g','h');E=gce();E.type
//Axis
clf; drawaxis();E=gce();E.type
//Labels
clf; plot3d();A=gca();E=A.x_label;E.type

