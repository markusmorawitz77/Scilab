clf();
//  inserting LaTeX formulas
xstring(0,0.9,'isolated text  and only one formula ')
xstring(0.6,0.8,'${\pi^2\over 6}=\sum_{n=1}^\infty {1\over n^2}$')
xstring(0,0.5,'text and formulas ${\pi^2\over 6}=\sum_{n=1}^\infty {1\over n^2}$')
xstring(0,0,'$\textrm{text and formulas together but inside \$\dots \$} : {\pi^2\over 6}=\sum_{n=1}^\infty {1\over n^2}$')
// change font size
A=gca();A.children.font_size=5;
