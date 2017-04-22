// generate a list of random values
X=grand(100,1,'nor',5,2);
clf()  
subplot(121)  //  normalized histogram
histplot([0 2 4 5 7 10],X,normalization=%t) 
subplot(122)  //  non-normalized histogram
histplot([0 2 4 5 7 10],X,normalization=%f) 
