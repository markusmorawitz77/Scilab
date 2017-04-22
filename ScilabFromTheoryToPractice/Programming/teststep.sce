//increment with step=2
txt='';
for i=1:2:10
    txt=txt+string(i)+' ';
end
i,txt
//negative increment
txt='';
vector=[10:-1:1];
for i=vector
    txt=txt+string(i)+' ';
end
i,txt
