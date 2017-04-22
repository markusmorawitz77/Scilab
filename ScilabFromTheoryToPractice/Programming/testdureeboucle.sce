//loop calculation time 
tic();
S=0;
for i=1:10^6
    S=S+i;
end
time=toc()
// matrix operation calculation time
tic();
S=sum(1:10^6);
time=toc()
