load data
 infile 'NUT_DATA.txt'
 into table nut_data
 fields terminated by "^" optionally enclosed by "~" trailing nullcols		  
 ( NDB_No,Nutr_No,Nutr_Val,Num_Data_Pts,Std_Error,
Src_Cd,Deriv_Cd,Ref_NDB_No,Add_Nutr_Mark,Num_Studies,		
Min,Max,DF,Low_EB,Up_EB,Stat_cmt,AddMod_Date,CC )