A=[1 2;3 4];y=[3;5];
x1=linsolve(A,-y);    // not displayed, even "with echo"
x2=A^(-1)*y           // displayed if using "with echo"
disp(x1,'x=')         // displayed, even if using "with no echo"