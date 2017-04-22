str='This is a character string'
n=strindex(str,'i')    // position of character 'i' in str
part(str,n)    // string in position n
strsubst(str,'i','*')    // replace 'i' with '*'
tokens(str)    // split according to the delimiter ' '
tokens(str,'i')    // split according to the delimiter  'i'
str='scilab'
strsplit(str)    // split characters
strsplit(str,'i')    // split according to delimiter 'i'
str = ["hat" "cat" "chat" "tac" "dog"]
grep(str,'a')
str='aababbbaaabba'
[first,last,match]=regexp(str,'/a(b)+/')
