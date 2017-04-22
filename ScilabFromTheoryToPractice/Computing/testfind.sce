// search
find([%F %F %T %F])
//vectors
L=grand(1,7,'uin',0,100)
i=find(L==L(3))    // i=3
i=find(L<50)    // multiple results
// matrix
A=zeros(5,3);A(:)=15:-1:1
// entry (1,3) = entry number 11
[i,j]=find(A==5)
ind=find(A==5)
// A=7,8,9
[i,j]=find((A-7).^2<=1)
ind=find((A-7).^2<=1)
