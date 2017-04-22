// generate a list of random values
X=grand(100,1,'def');
clf()  
subplot(121)  //  histogram with 5 bins
histplot(5,X)
subplot(122)  //  histogram with variable size bins
histplot([0 0.2 0.5 0.6 0.7 1],X) 
