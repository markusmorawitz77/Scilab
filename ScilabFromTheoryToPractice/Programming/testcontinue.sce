//while loop
txt='';
i=0;
while i<10
    i=i+1;
    if (i>2)&(i<7) then continue
        else txt=txt+string(i)+' ';
    end
end
i,txt

//for loop
txt='';
for i=1:10
    if (i>2)&(i<7) then continue
        else txt=txt+string(i)+' ';
    end
end
i,txt
