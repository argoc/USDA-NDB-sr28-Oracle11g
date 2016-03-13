LOAD DATA
 INFILE 'FOOD_DES.txt'
 INTO TABLE food_des
 FIELDS TERMINATED BY "^" OPTIONALLY ENCLOSED BY "~" TRAILING NULLCOLS			  
 ( NDB_No, FdGrp_Cd, Long_Desc, Shrt_Desc, ComName, ManufacName, Survey, Ref_desc, Refuse, SciName, N_Factor, Pro_Factor, Fat_Factor, CHO_Factor)