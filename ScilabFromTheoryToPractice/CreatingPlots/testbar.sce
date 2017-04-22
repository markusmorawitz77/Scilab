// generating a list of random values 
X=grand(100,1,'bin',10,0.4);
m=tabul(X)    //  table of frequencies
x=m(:,1)      //  values
n=m(:,2)      //  bin counts
clf()  
subplot(121)  // vertical bars
bar(x,n)  
subplot(122)  //  horizontal bars and options
barh(x,n,0.5,'g')
