clf();
//  insert LaTeX formulas
xstring(0.5,1,'$\LaTeX $')
xstring(0.75,0.75,'${\pi\over 2}=\int_{0}^\infty {\sin(x)\over x}\; dx$')
xstring(0.25,0.75,'$${\pi^2\over 6}=\sum_{n=1}^\infty {1\over n^2}$$')
xstring(0.25,0.25,prettyprint(eye(4,4)))
xstring(0.75,0.25,'$g(x)=$ '+prettyprint(poly(1,'x')/(2*poly(0,'x')-1)))
xstring(0.25,0,'$f(x)=$ '+prettyprint(poly(1:4,'x')))
// change font size
A=gca();A.children.font_size=5;
