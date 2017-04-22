calendar(1970,1)    // Jan. 1970 calendar
eomday(2012,2)    // last day of February 2012
d1=[1970 1 1 0 0 0]    // Scilab date format
t1=datenum(d1)    // serial date number for date d1
[N,S]=weekday(t1)    // day of the week for date d1
date()    // current date
d2=clock()    // scilab vector for current date
t2=datenum(d2)    // serial date number of date d2
datevec(t2)    // date corresponding to t2
etime(d1,d2)    // difference between dates d1 and d2
d=etime(d2,d1)    // difference between dates d2 and d1 
getdate(d)    // day occurring d seconds after Jan. 1st 1970
