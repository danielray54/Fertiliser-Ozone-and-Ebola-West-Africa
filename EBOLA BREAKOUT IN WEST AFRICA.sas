/* Data for the CI Question */ 
DATA EbolaWstAfr; 
INPUT Country $ Death $ COUNT; 
DATALINES; 
	Guinea YES 1327 
	Guinea NO 837 
	Liberia YES 3145 
	Liberia NO 4490 
	; 
RUN; 
/* Use the FREQ procedure with RISKDIFF KEYWORK 
	to get the 95% CI of the difference*/ 
PROC FREQ DATA=EbolaWstAfr ORDER=DATA; 
	WEIGHT COUNT; 
	TABLES Country * Death / RISKDIFF; 
RUN; 
/* Data for the Z-Test Question */ 
DATA EbolaWstAfr2; 
INPUT Country $ Death $ COUNT; 
DATALINES; 
	Guinea YES 1327 
	Guinea NO 837 
	Sierra YES 1583 
Sierra NO 5729 
	; 
RUN; 
/* Use the FREQ procedure with CHISQ KEYWORK 
	to get the 95% CI of the difference*/ 
PROC FREQ DATA=EbolaWstAfr2 ORDER=DATA; 
	WEIGHT COUNT; 
	TABLES Country * Death / CHISQ; 
RUN;

