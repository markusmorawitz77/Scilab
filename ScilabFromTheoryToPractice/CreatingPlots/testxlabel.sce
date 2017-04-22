// generate a list of random values
X=grand(100,1,'bin',10,0.6);
m=tabul(X);    //  table of frequencies
x=m(:,1);      //  values
n=m(:,2);      //  bin counts
clf();bar(x,n) //  histogram
A=gca();
A.x_label.text="grade over 10";
A.x_label.font_size=3;
A.x_label.font_style=4;
A.y_label.text="counts";
A.y_label.font_size=3;
A.y_label.font_style=4;
