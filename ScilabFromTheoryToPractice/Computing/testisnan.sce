%nan==%nan    // returns %F instead of %T
%nan<>%nan    // returns %T instead of %F
isnan(%nan)    // accurately returns %T
isnan(%inf)    // accurately returns %F
