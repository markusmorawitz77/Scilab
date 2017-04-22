function txt=%s_a_c(s,c)
    txt=string(s)+c
endfunction

x=1    // a real number
s='2'  //a string
x+s    // %s_a_c returns the string  '12'
s+x    // error since %c_a_s is undefined
