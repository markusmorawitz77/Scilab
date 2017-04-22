1==3    // this is false
1<2    // this is true
~((1==3)|(1<2))    // with parentheses
~(1==3)|(1<2)    // without parentheses <==>(~(1==3))|(1<2)
~((1==3)&(1>=2))    // with parentheses
~(1==3)&(1>=2)    // without parentheses <==>(~(1==3))&(1>=2)
