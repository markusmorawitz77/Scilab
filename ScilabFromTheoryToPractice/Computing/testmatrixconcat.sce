A=[1 2 3; 4 5 6; 7 8 9];
B=[10,11,12;15 14 13]; 
C=[A;B]      // A above B
D=[B;A]      // B above A
E=[C,D]      // C left of D
F=[D,C]      // D left of C
G=[A,B]      // A left of B -> error
