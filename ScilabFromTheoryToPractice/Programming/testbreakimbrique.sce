txt='';
i=0;
while i<2
    i=i+1;
    j=0;
    txt=txt+'i='+string(i)+', ';
    while j<5
        j=j+1;
        txt=txt+'j='+string(j)+', ';
        if j>2 then break  // get out at j=3
        end
    end
end
i,j,txt
