// plotting a figure 
x=[1:0.01:6];y=sin(x);
clf; plot(x,y,'-r')
// add a title
title('y=sin(x)','fontsize',5,'color','red','backgroundcolor','cyan')
// Plot axes
A=gca();
// change the font 
A.title.font_style=3;
