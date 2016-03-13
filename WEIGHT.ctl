load data
 infile 'WEIGHT.txt'
 into table weight
 fields terminated by "^" optionally enclosed by "~" trailing nullcols		  
 ( NDB_No,Seq,Amount,Msre_Desc,Gm_Wgt,Num_Data_Pts,Std_Dev	 )