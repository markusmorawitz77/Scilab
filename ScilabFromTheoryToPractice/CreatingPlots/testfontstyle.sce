clf();
// change font  
xstring(0.15,1,'Fonts using font_style')
xstring(0,0.8,'0 Courier')
E=gce();E.font_style=0;
xstring(0.5,0.8,'1 Symbol')
E=gce();E.font_style=1;
xstring(0,0.6,'2 Times')
E=gce();E.font_style=2; 
xstring(0,0.4,'3 Times italic')
E=gce();E.font_style=3; 
xstring(0,0.2,'4 Times Bold')
E=gce();E.font_style=4; 
xstring(0,0,'5 Times Bold italic')
E=gce();E.font_style=5; 
xstring(0.5,0.6,'6 Helvetica')
E=gce();E.font_style=6; 
xstring(0.5,0.4,'7 Helvetica')
E=gce();E.font_style=7; 
xstring(0.5,0.2,'8 Helvetica Bold')
E=gce();E.font_style=8; 
xstring(0.5,0,'9 Helvetica Bold italic')
E=gce();E.font_style=9; 
// change font size
A=gca();A.children.font_size=5;
