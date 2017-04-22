x=[0:0.4:%pi]';y=sin(x);
clf()
subplot(221)
plot2d2(x,y,5)
xtitle('plot2d2 <=> polyline_style=2')
subplot(222)
plot2d3(x,y,5)
xtitle('plot2d3 <=> polyline_style=3')
subplot(223)
plot2d4(x,y,5)
xtitle('plot2d4 <=> polyline_style=4')
//increase the arrow size in plot2d4
E=gce();
E.children.children.arrow_size_factor=3;
subplot(224)
xtitle('plot2d with polyline_style=5')
plot2d(x,y,5)
//increase the arrow size in plot2d4
E=gce();
E.children.polyline_style=5;

