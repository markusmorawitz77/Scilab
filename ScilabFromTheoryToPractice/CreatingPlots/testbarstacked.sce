// generate a list of random values
x=[1:10]';
n1=x;n2=11-x;n3=5*ones(x);
clf()  
subplot(121)  // vertical grouped bars
bar(x,[n1 n2 n3],'grouped')  
subplot(122)  //  horizontal stacked bars
barh(x,[n1 n2 n3],0.5,'stacked')
