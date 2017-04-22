mode(1)              //execution mode with echo
A=[1 2;3 4];y=[3;5];
x1=linsolve(A,-y);   //not displayed, even "with echo"
x2=A^(-1)*y          //displayed if "with echo"
disp(x1,'x=')        //displayed even "with no echo"
