endoftheworld=struct('day',21,'month',12,'year',2012)  // creating
typeof(endoftheworld),type(endoftheworld)  // type st = type 17
endoftheworld.day  // retrieve
endoftheworld('month')
endoftheworld.year=2013  // modify
isstruct(endoftheworld) // true 
isstruct(1)  // false
