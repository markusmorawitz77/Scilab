// stack representation 
L=[]    // empty stack
L=[1,L]    // add 1 to the stack
L=[2,L]    // add 2 to the stack
L=[3,L]    // add 3 to the stack
x=L(1),L(1)=[]    // "unstacking"
// queue representation
F=[]    // empty queue
F=[F,1]    // add 1 to the queue
F=[F,2]    // add 2 to the queue
F=[F,3]    // add 3 to the queue
x=F(1),F(1)=[]    // remove from the queue
