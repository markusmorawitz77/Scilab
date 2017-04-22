exec('testplot.sce',-1)  //to delete
A=gca();         // figure axes
A.children(1).children.line_style  // 5 for dotted line
A.children(2).children.line_style  //  2 for dashes
A.children(3).children.line_style  //  1 for solid
A.children(3).children.foreground  //  5 for color red
A.children(1).children.mark_style  //  9 for o markers
