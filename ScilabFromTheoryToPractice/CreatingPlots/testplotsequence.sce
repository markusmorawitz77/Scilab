clf;
// computing terms of a sequence defined by
//  u(k+1)=sin(u(k))   and u(1)=1
u(1)=1;
for k=1:20
    u(k+1)=sin(u(k));
end
//plot terms of the sequence 
plot(u,'-*r')
