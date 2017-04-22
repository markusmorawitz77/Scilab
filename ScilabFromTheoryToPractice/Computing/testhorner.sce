P=poly(1,'x')    // P(x)=x-1
Q=poly([-1 1],'x')    // Q(x)=x^2-1
horner(P,Q),Q-1    // P(Q(x))=x^2-1
horner(Q,P),P^2-1    // Q(P(x))=x^2-2*x