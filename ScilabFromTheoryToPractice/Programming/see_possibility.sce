function see_possibility(S) 
    // S= sudoku  with 9 rows and 9 columns 
    S_pos=[]
    for i=1:9
        row=[]
        for j=1:9
            if S(i,j)==0 then P=possibility(i,j,S)
            else P=S(i,j)
            end
            row=[row strcat(string(P),',')]
        end 
        S_pos=[S_pos;row]
    end
    disp('here is the list of possible values for each cell :')
    disp(S_pos)
endfunction 
