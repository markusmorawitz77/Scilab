M =  hypermat([2 3 4])    // 4 matrices of 2 rows and 3 columns
M=M+1    // scalar addition
ndims(M)    // hypermatrix with 3 dimensions
size(M)    // size 2x3x4
typeof(M)    // type hypermat
N=  hypermat([2 3 4],1:24)
N(:,:,3)    // 3rd "sub-matrix"
M+N    // addition
