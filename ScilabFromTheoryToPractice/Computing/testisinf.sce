// comparing real numbers to infinity
%inf==%inf
%inf<=%inf
1<=%inf
1>-%inf
// using isinf
A=[0 %nan 1 %inf 2 -%inf %nan ]
A==%inf
isinf(A)
