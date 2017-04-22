//while loop
txt='';
i=0;
while %T
    i=i+1;
    txt=txt+string(i)+' ';
    if i>=10 then break
    end
end
i,txt
//for loop
txt='';
for i=1:10
    txt=txt+string(i)+' ';
    if i>=5 then break
    end
end
i,txt
