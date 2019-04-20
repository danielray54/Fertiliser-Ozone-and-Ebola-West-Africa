/*Define path to csv file*/   
FILENAME REFFILE '/folders/myfolders/5/data/ozr.csv'; 
/*Import data*/   
PROC IMPORT DATAFILE=REFFILE DBMS=csv OUT=Ozone; 
	GETNAMES=YES; 
RUN; 
/*Run Ttest on weight using the group class*/   
PROC TTEST DATA=Ozone; 
	CLASS Group; 
	VAR Weight; 
RUN;

