// generate a list of random values
X=grand(100,1,'bin',4,0.4);
m=tabul(X)    //  table of frequencies
x=m(:,1)      //  values
n=m(:,2)      //  bin counts
clf()  
subplot(121)  //  simple pie chart 
pie(n)
subplot(122)  //  exploded pie chart
pie(n,bool2s(n==max(n)),'x='+string(x)) 
