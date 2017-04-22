// list of available fonts 
fonts=xlfont('AVAILABLE_FONTS');
//load the font French Script MT
xlfont('French Script MT',10)
//  display text with French Script MT
clf; 
xstring(0.1,0.75,'Times font in Scilab 5.5.0')
E=gce();E.font_style=2; E.font_size=5;
xstring(0.1,0.5,'Times Bold Italic font in Scilab 5.5.0')
E=gce();E.font_style=5; E.font_size=5;
xstring(0.1,0.25,'French Script MT font in Scilab 5.5.0')
E=gce();E.font_style=10; E.font_size=6; 
