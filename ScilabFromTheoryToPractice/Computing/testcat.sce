A=[1 2 3; 4 5 6; 7 8 9]    // 3x3 matrix (3 rows, 3 columns)
B=[10,11,12;15 14 13]    // 2x3 matrix (2 rows, 3 columns)
// concatenating matrices
C=[A;B]    // A above B
cat(1,A,B)    // =C
D=[B;A]    // B above A
cat(1,B,A)    // =D
E=[C,D]    // C left of D
cat(2,C,D)    // =E
