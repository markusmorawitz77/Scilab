//if then elseif
x=1;
if x==1  then  txt='x is equal to 1';
    elseif x==2 then txt='x is equal to 2';
    else txt='x is not equal to 1 nor 2';
end  //<-- only one "end"
disp(txt)
//two nested if statements
x=2;
if x==1  then  txt='x is equal to 1';
    else if x==2 then txt='x is equal to 2';
        else txt='x is not equal to 1 nor 2';
        end //<-- "end" of second "if"
end //<-- "end" of first "if"
disp(txt)
