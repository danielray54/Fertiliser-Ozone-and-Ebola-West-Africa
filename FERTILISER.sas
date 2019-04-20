/*Create Data Set for Analysis*/  
data fert; 
input Plot$ FertA FertB; 
    datalines; 
    1 56 67 
    2 62 72  
    3 74 79  
    4 94 86  
    5 52 71  
    6 94 90  
    7 97 86 
    8 80 65  
    9 78 85 
    10 44 56 
    11 52 61  
    12 51 66 
    ; 
run; 
/*Run Paired T Test with H0 = 0*/  
proc ttest data=fert H0=0; 
    paired FertA*FertB; 
run;

