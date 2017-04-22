//row vector--> 3 iterations
vector=['one' 'two' 'three']
for word=vector
    disp(word)
end
//column vector--> only one iteration
vector=['one' 'two' 'three']'
for mot=vector
    disp(word)
end
// ordinary matrix--> one iteration per column
txt='';
vector=[1 2; 3 4]
for i=vector
    txt=txt+string(i)+' ';
end
i,txt
