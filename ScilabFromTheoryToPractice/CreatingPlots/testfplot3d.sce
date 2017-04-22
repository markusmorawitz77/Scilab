function z=saddle(x,y)
    z=x^2-y^2
endfunction
// define the grid
x=[-1:0.2:1];y=x;
// display the surface 
clf;
subplot(121)
fplot3d(x,y,saddle)
xtitle('fplot3d')
subplot(122)
fplot3d1(x,y,saddle)
xtitle('fplot3d1')
// color table
F=gcf();F.color_map=jetcolormap(8);
