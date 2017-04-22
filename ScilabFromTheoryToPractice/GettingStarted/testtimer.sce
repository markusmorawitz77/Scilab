// time with tic() and toc()
tic()
sleep(1000)    // 1000ms=1second
toc()

tic()
xpause(200000)    // 200000micros=0.2 seconds
toc()
// CPU time with timer
timer();
sleep(1000)    // 1000ms=1second
timer()
timer();
xpause(1000000)    // 1000000micros=1 second
timer()
//real time
realtimeinit(1)    // time unit of 1 second 
realtime(0)    // sets current date to t=0
tic()
realtime(2)    // wait for date t=2
toc()    // the timer will display 2 secondes
