// generate a list of random values
X=grand(10,1,'bin',10,0.4)
m=tabul(X)    //table of frequencies
x=m(:,1)      //values
n=m(:,2)      //counts
