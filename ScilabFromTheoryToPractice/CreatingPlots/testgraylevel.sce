x=-2:0.01:2; y=x;
function z=milkdrop(x,y)
    sq=(x^2+y^2)
    z= exp( exp(-sq).*(exp(cos(sq).^20)+8*sin(sq).^20+2*sin(2*(sq)).^8) );
endfunction
z=feval(x,y,milkdrop)';
clf;
F=gcf();F.color_map=graycolormap(64);
subplot(121)
surf(x,y,z)
F.children(1).children.color_mode=-1;
xtitle('surf')
subplot(122)
Sfgrayplot(x,y,milkdrop)
xtitle('fgrayplot')
