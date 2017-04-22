X=poly(0,'x')   // variable 'x'
P=X^2-3*X+2     // combination of polynomials
coeff(P)        // coefficients 
degree(P)       // degree =2
horner(P,[0:3]) // evaluating
roots(P)        // roots
Q=poly([-4 0 1],'x','coeff')
gcd([P,Q])            // =X-2
lcm([P,Q])            // =(x^2-4)*(x-1)
[pgcd,U]=bezout(P,Q)  // Bézout's identity
L=factors(P),         // P(x)=(x-1)*(x-2)
