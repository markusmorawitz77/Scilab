function check_point(M)
  if typeof(M)<>'point' then  whereami()
    error(10001,'the argument is not of the ''point'' type !')
  elseif length(M)<>3 then whereami()
    error(10002,'the point does not have two coordinates!')
  elseif (type(M.x)<>1)|(type(M.y)<>1) then whereami()
    error(10003,'the point''s coordinates are not numbers!')
  elseif (length(M.x)<>1)|(length(M.y)<>1) then whereami()
    error(10004,'the point''s coordinates are number tables!')
  elseif (imag(M.x)<>0)|(imag(M.y)<>0) then whereami()
    error(10004,'the point''s coordinates are not real!')
  end
endfunction
